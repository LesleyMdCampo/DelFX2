class SBoardsController < ApplicationController
  def show
    @sboard = SBoard.find(params[:id])
  end
end
