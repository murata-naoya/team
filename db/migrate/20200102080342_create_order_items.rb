class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|

      t.integer :order_id
      t.integer :product_id
      t.integer :amount
      t.integer :price
      t.integer :making_status, default: 0
      t.timestamps
    end
  end
end
