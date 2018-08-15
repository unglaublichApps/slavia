class MovesController < ApplicationController

  def new
    @move = Move.new
  end

  def create
    @move_type = MoveType.find_by name: 'Purchase'
    @move = Move.new(moves_params)
    debugger
    @move.move_type = @move_type
    if @move.save!
      flash[:success] = "Transaction was create"
      redirect_to move_path(@move)
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
