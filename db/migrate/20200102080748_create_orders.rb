class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.integer :enduser_id
      t.integer :fee, default: 800
      t.integer :total_count
      t.integer :order_status, default: 0
      t.integer :option
      t.string :address_name
      t.string :postal_code
      t.string :address

      t.timestamps
    end
  end
end
