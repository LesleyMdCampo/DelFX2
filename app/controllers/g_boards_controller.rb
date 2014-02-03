class GBoardsController < ApplicationController
  def show
    @gboard = GBoard.find(params[:id])
  end
end