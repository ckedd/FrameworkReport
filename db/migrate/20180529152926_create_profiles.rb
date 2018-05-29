class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :user_id, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :age, null: false
      t.timestamps
    end
  end
end
