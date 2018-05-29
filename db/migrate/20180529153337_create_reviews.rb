class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :rating, null: false
      t.integer :package_id, null: false
      t.string :general_content, null: false
      t.string :pros_content, null: false
      t.string :cons_content, null: false
      t.timestamps
    end
  end
end
