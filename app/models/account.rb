class Account < ApplicationRecord

  #association
  has_many :account_moves
  has_many :moves, through: :account_moves


end
