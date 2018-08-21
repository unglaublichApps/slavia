class AddAccountToMove < ActiveRecord::Migration[5.2]
  def change
    add_column :moves, :move_id, :integer, default: 1
  end
end
