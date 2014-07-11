class AddPictureToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :picture, :string
  end
end
