class AddEventIdToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :chatrooms, :event_id, :integer
  end
end
