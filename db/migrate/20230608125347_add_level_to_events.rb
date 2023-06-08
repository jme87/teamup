class AddLevelToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :level, :string
  end
end
