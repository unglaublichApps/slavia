class Move < ApplicationRecord

  #association
  has_many :account_moves
  has_many :accounts, through: :account_moves

end
