class Move < ApplicationRecord

  belongs_to :account

  def doPurchaseCredit(accountId)
    account = Account.find(accountId)
    self.account = account
    account.balance += self.amount * (-1)
    self.save
    account.save
  end

  def doPurchaseDebit(accountId)
    account = Account.find(accountId)
    self.account = account
    account.balance += self.amount
    self.save
    account.save
  end

end
