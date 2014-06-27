class AddFloorsToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :floors, :integer
    change_column :houses, :lot_size, :string
    change_column :houses, :square_footage, :string
  end
end
