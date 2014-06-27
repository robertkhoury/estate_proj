class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :address

      t.timestamps
    end
    add_index :houses, [:user_id, :created_at]
  end
end
