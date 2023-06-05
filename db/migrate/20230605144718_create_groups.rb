class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :title
      t.string :desription
      t.string :city
      t.string :category
      t.string :private
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
