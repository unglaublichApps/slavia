class RemovePayType < ActiveRecord::Migration[5.2]
  def change
    remove_column :moves, :pay_type
  end
end
