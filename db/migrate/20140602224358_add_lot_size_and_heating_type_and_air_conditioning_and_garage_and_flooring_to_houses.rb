class AddLotSizeAndHeatingTypeAndAirConditioningAndGarageAndFlooringToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :lot_size, :integer
    add_column :houses, :heating_type, :string
    add_column :houses, :air_conditioning, :string
    add_column :houses, :garage, :string
    add_column :houses, :flooring, :string
  end
end
