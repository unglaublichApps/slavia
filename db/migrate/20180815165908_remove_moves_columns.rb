class RemoveMovesColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :moves, :payment_type_id, :integer
    remove_column :moves, :move_type_id, :integer
    remove_column :moves, :pay_type
  end
end
