class AddDeletedAtToEndusers < ActiveRecord::Migration[5.2]
  def change
    add_column :endusers, :deleted_at, :datetime
    add_index :endusers, :deleted_at
  end
end
