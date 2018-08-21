class MovesController < ApplicationController

  def new
    @move = Move.new
    @accounts = Account.all
  end

  def create
    account = params[:account]
    @move = Purchase.new(moves_params)
    if (@move.doPurchaseCredit(account[:account_id]) && @move.doPurchaseDebit(3))
      flash[:success] = "Transaction was create"
      redirect_to accounts_path
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
