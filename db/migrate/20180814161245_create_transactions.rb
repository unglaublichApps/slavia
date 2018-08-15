class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :payment_type_id
      t.integer :transacion_type_id
      t.text :description
      t.float :amount
      t.timestamps
    end
  end
end
