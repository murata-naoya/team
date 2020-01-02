class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :image_id
      t.integer :price, null: false
      t.integer :genre_id, null: false
      t.integer :sell_status, null: false
      
      t.timestamps
    end
  end
end
