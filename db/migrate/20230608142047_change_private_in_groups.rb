class ChangePrivateInGroups < ActiveRecord::Migration[7.0]
  def change
    remove_column :groups, :private
    add_column :groups, :private, :boolean
  end
end
