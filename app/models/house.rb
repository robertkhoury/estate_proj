class House < ActiveRecord::Base
  belongs_to :user
  has_many :relationships, foreign_key: "followed_id", dependent: :destroy
  has_many :reverse_relationships, foreign_key: "follower_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
  has_many :followers, through: :reverse_relationships, source: :follower
  default_scope -> { order('created_at DESC') }
  validates_presence_of :user_id, :address, :city, :state, :price, :description, :zip
  mount_uploader :picture, PictureUploader

end
