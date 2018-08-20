class MovesController < ApplicationController

  def new
    @move = Move.new
    @accounts = Account.all
  end

  def create
    @moveDebit = Purchase.new(moves_params)
    @moveCredit = Purchase.new(moves_params)
    amount = @moveCredit.amount
    @moveCredit.amount *= -1
    accountId = params[:account]
    @accountCredit = Account.find(accountId[:account_id])
    @accountDebit = Account.find(3)
    # debugger
    @accountCredit.balance -= amount
    @accountDebit.balance += amount
    @moveCredit.save
    @accountCredit.save
    @accountDebit.save
    if (@moveDebit.save)
    # if (@moveDebit.save && @moveCredit.save && @accountCredit.update && @accountDebit.update)
      flash[:success] = "Transaction was create"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
  end

  private
    def moves_params
      params.require(:move).permit(:amount, :description)
    end
end
