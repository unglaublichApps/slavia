class ChangeTransactionToMove < ActiveRecord::Migration[5.2]
  def change
    rename_table :transactions, :moves
  end
end
