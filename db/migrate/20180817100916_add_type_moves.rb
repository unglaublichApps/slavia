class AddTypeMoves < ActiveRecord::Migration[5.2]
  def change
    add_column :moves, :type, :string
  end
end
