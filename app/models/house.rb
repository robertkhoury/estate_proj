class House < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :address, :city, :state, :price, :description
  #Need to add the rest of the attributes - only required ones? idk

end
