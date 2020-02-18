class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|

      t.integer :enduser_id
      t.string :address_name
      t.string :postal_code
      t.string :address
      t.timestamps
    end
  end
end
