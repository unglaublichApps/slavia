class ChangeTransactionToMoveTables < ActiveRecord::Migration[5.2]
  def change
    rename_table :transaction_types, :move_types
    rename_table :account_transactions, :account_moves
  end
end
