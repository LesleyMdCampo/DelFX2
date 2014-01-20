class StyleboardsController < ApplicationController
  before_action :set_styleboard, only: [:show, :edit, :update, :destroy]

  # GET /styleboards
  # GET /styleboards.json
  def index
    @styleboards = Styleboard.all
  end

  # GET /styleboards/1
  # GET /styleboards/1.json
  def show
  end

  # GET /styleboards/new
  def new
    @styleboard = Styleboard.new
  end

  # GET /styleboards/1/edit
  def edit
  end

  # POST /styleboards
  # POST /styleboards.json
  def create
    @styleboard = Styleboard.new(styleboard_params)

    respond_to do |format|
      if @styleboard.save
        format.html { redirect_to @styleboard, notice: 'Styleboard was successfully created.' }
        format.json { render action: 'show', status: :created, location: @styleboard }
      else
        format.html { render action: 'new' }
        format.json { render json: @styleboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /styleboards/1
  # PATCH/PUT /styleboards/1.json
  def update
    respond_to do |format|
      if @styleboard.update(styleboard_params)
        format.html { redirect_to @styleboard, notice: 'Styleboard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @styleboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /styleboards/1
  # DELETE /styleboards/1.json
  def destroy
    @styleboard.destroy
    respond_to do |format|
      format.html { redirect_to styleboards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_styleboard
      @styleboard = Styleboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def styleboard_params
      params[:styleboard]
    end
end
