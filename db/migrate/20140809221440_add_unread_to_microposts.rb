class AddUnreadToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :unread, :boolean
  end
end
