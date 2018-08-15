class ChangeTransactionToMoveAllColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :account_transactions, :transacion_id, :move_id
    rename_column :moves, :transacion_type_id, :move_type_id

  end
end
