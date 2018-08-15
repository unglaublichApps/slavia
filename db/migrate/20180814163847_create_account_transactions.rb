class CreateAccountTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :account_transactions do |t|
      t.integer :account_id
      t.integer :transacion_id
    end
  end
end
