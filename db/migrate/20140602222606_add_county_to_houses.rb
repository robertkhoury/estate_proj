class AddCountyToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :county, :string
  end
end
