class WorksController < ApplicationController

  def show
    @work = Work.find(params[:id])
  end

  def contact
  end

  def index
    @works = Work.all
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    @work.save
    redirect_to root_path
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    @work.update(work_params)
    redirect_to root_path
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to root_path
  end
  
  private
  

  def work_params
    params.require(:work).permit(:name, :picture_url, :review)
  end

end