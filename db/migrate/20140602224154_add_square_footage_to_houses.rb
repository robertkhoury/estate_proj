class AddSquareFootageToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :square_footage, :integer
  end
end
