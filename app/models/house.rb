class House < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates_presence_of :user_id, :address, :city, :state, :price, :description
  #Need to add the rest of the attributes - only required ones? idk

end
