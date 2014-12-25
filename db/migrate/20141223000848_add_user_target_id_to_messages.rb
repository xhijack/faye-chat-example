class AddUserTargetIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :user_target_id, :integer
  end
end
