class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :stock
      t.integer :price
      t.string :photo

      t.timestamps null: false
    end
  end
end
