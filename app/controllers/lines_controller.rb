class LinesController < ApplicationController
  
  def index
    @lines = Line.all
  end
  
  def show
    @line = Line.find_by_id(params[:id])
  end
    
  def new
    @line = Line.new
  end
  
  def create
    @line = Line.new
    @line.name = params[:line][:name]
    @line.frequency = params[:line][:frequency]
    
    if @line.save
      flash[:notice] = "New line added!"
      redirect_to lines_url
    else
      flash[:alert] = "There is something wrong!"
      render "new"
    end
  end
  
  def edit
    @line = Line.find_by_id(params[:id])
  end
  
  def update
    @line = Line.find_by_id(params[:id])
    @line.name = params[:line][:name]
    @line.frequency = params[:line][:frequency]
    
    if @line.save
      flash[:notice] = "Line has been updated!"
      redirect_to lines_url
    else
      flash[:alert] = "Something is wrong with your data!"
      render "edit"
    end
      
  end
  
  def eliminate
    @line = Line.find_by_id(params[:id])
    @line.destroy
    redirect_to lines_url
  end
  
  
end