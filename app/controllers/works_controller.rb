class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @works = Works.all
  end

  def new
    @work = Works.new
  end

  def create
    @work = Works.new(work_params)
    @work.save
    redirect_to root_path
  end

  def edit
  end

  def update
    @work.update(work_params)
    redirect_to root_path
  end

  def destroy
    @work.destroy
    redirect_to root_path
  end
  
  private
  def set_work
    @work = Works.find(params[:id])
  end

  def work_params
    params.require(:work).permit(:name, :picture_url, :review)
  end

end