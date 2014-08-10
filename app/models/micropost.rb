class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true
  validates :user_id, presence: true
  validates :sender_id, presence: true

  def mark_read
    self.unread = false
  end

end