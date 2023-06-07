class DeleteUserNameFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :user_name
  end
end
