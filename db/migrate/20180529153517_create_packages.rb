class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :name, null: false
      t.string :developed_by
      t.boolean :live
      t.datetime :last_updated
      t.timestamps
    end
  end
end
