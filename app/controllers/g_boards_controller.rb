class GBoardsController < ApplicationController
  before_action :set_g_board, only: [:show, :edit, :update, :destroy]

  # GET /g_boards
  # GET /g_boards.json
  def index
    @g_boards = GBoard.all
  end

  # GET /g_boards/1
  # GET /g_boards/1.json
  def show
  end

  # GET /g_boards/new
  def new
    @g_board = GBoard.new
  end

  # GET /g_boards/1/edit
  def edit
  end

  # POST /g_boards
  # POST /g_boards.json
  def create
    @g_board = GBoard.new(g_board_params)

    respond_to do |format|
      if @g_board.save
        format.html { redirect_to @g_board, notice: 'G board was successfully created.' }
        format.json { render action: 'show', status: :created, location: @g_board }
      else
        format.html { render action: 'new' }
        format.json { render json: @g_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g_boards/1
  # PATCH/PUT /g_boards/1.json
  def update
    respond_to do |format|
      if @g_board.update(g_board_params)
        format.html { redirect_to @g_board, notice: 'G board was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @g_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g_boards/1
  # DELETE /g_boards/1.json
  def destroy
    @g_board.destroy
    respond_to do |format|
      format.html { redirect_to g_boards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g_board
      @g_board = GBoard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g_board_params
      params.require(:g_board).permit(:graphic_id, :image, :place)
    end
end
