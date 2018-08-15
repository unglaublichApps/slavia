class Move < ApplicationRecord

  #association
  has_many :account_moves
  has_many :accounts, through: :account_moves
  belongs_to :payment_types
  belongs_to :move_types


end
