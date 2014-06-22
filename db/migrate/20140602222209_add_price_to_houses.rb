class AddPriceToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :price, :integer
  end
end
