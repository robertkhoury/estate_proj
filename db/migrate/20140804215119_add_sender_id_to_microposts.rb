class AddSenderIdToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :sender_id, :integer
  end
end
