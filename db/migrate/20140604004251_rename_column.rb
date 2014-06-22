class RenameColumn < ActiveRecord::Migration
  def self.up
  	rename_column :houses, :type, :house_type
  end

  def self.down
  	# rename back if you need
  end
end
