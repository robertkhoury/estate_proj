class AddBedsAndBathsToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :beds, :integer
    add_column :houses, :baths, :float
  end
end
