class CreateShoppingItems < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_items do |t|
      t.integer :user_id
      t.integer :profile_id
      t.string :name
      t.integer :state

      t.timestamps
    end
  end
end
