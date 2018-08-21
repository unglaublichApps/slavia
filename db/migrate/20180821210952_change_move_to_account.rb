class ChangeMoveToAccount < ActiveRecord::Migration[5.2]
  def change
    rename_column :moves, :move_id, :account_id
  end
end
