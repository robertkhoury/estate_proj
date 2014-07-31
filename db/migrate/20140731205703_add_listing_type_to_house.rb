class AddListingTypeToHouse < ActiveRecord::Migration
  def change
    add_column :houses, :listing_type, :string
  end
end
