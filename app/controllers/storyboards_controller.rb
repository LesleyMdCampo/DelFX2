class StoryboardsController < ApplicationController
  before_action :set_storyboard, only: [:show, :edit, :update, :destroy]

  # GET /storyboards
  # GET /storyboards.json
  def index
    @storyboards = Storyboard.all
  end

  # GET /storyboards/1
  # GET /storyboards/1.json
  def show
  end

  # GET /storyboards/new
  def new
    @storyboard = Storyboard.new
  end

  # GET /storyboards/1/edit
  def edit
  end

  # POST /storyboards
  # POST /storyboards.json
  def create
    @storyboard = Storyboard.new(storyboard_params)

    respond_to do |format|
      if @storyboard.save
        format.html { redirect_to @storyboard, notice: 'Storyboard was successfully created.' }
        format.json { render action: 'show', status: :created, location: @storyboard }
      else
        format.html { render action: 'new' }
        format.json { render json: @storyboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storyboards/1
  # PATCH/PUT /storyboards/1.json
  def update
    respond_to do |format|
      if @storyboard.update(storyboard_params)
        format.html { redirect_to @storyboard, notice: 'Storyboard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @storyboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storyboards/1
  # DELETE /storyboards/1.json
  def destroy
    @storyboard.destroy
    respond_to do |format|
      format.html { redirect_to storyboards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storyboard
      @storyboard = Storyboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def storyboard_params
      params.require(:storyboard).permit(:name, :description, :thumbnail_url)
    end
end
