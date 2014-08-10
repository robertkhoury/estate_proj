class User < ActiveRecord::Base
  has_many :microposts
  has_many :houses
  has_many :messages
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_houses, through: :relationships, source: :followed
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }
  has_many :received_messages,
   :class_name => 'Message',
   :primary_key=>'beamer_id',
   :foreign_key => 'recepient_id',
   :order => "messages.created_at DESC",
   :conditions => ["messages.recepient_deleted = ?", false]
   

  def received_messages?
    Message.received_by(self)
  end
  
  def unread_messages?
    unread_message_count > 0 ? true : false
  end
 
  # Returns the number of unread messages for this user
  def unread_message_count
    eval 'messages.count(:conditions => ["recepient_id = ? AND read_at IS NULL", self.beamer_id])'
  end



  def following?(house)
    relationships.find_by(followed_id: house.id)
  end

  def follow!(house)
    relationships.create!(followed_id: house.id)
  end

  def unfollow!(house)
    relationships.find_by(followed_id: house.id).destroy
  end

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def feed
    # This is preliminary. See "Following users" for the full implementation.
    Micropost.where("user_id = ?", id)
  end


  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end