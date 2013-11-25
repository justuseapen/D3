class AddUserIdToSeshes < ActiveRecord::Migration
  def change
    add_column :seshes, :user_id, :integer
    add_index :seshes, :user_id
  end
end
