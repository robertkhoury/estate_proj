class AddYearBuiltAndBasementAndAtticAndParkingAndFireplacesAndAppliancesAndTypeAndDescriptionToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :year_built, :integer
    add_column :houses, :basement, :string
    add_column :houses, :attic, :string
    add_column :houses, :parking, :string
    add_column :houses, :fireplaces, :integer
    add_column :houses, :appliances, :string
    add_column :houses, :type, :string
    add_column :houses, :description, :string
  end
end
