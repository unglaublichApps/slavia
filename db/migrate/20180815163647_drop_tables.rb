class DropTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :move_types
    drop_table :payment_types
  end
end
