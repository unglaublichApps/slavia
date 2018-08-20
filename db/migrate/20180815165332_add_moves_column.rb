class AddMovesColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :moves, :move_type, :integer
    add_column :moves, :pay_type, :integer
  end
end
