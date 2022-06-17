class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.integer :account_id
      t.string :name

      t.timestamps
    end
  end
end
