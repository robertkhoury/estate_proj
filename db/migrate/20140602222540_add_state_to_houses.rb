class AddStateToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :state, :string
  end
end
