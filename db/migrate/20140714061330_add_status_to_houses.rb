class AddStatusToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :status, :string
  end
end
