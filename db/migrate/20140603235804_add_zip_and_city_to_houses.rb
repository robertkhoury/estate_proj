class AddZipAndCityToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :zip, :integer
    add_column :houses, :city, :string
  end
end
