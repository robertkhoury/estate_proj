class ChangeHouseFormatInHouse < ActiveRecord::Migration
  def change
  	change_column :houses, :description, :text, :limit => nil
  end
end
