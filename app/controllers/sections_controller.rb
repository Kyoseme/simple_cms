class SectionsController < ApplicationController
  
  def index
    list
    render("list")
  end
  
  def list
    @sections = Section.order("sections.position ASC")
  end
  
  def show
    @section = Section.find(params[:id])
  end
  
  def new
    @section = Section.new
  end
  
  def create
    # Instantiate a new object using form parameters
    @section = Section.new(params[:section])
    # Save the object
    if @section.save
      # If save succeeds, redirect to the list action
      flash[:notice] = "Section created!"
      redirect_to(:action => "list")
    else
      # If save fails, redisplay the form so user can fix probolemos
      render("new")
    end
  end
  
  def edit
    @section = Section.find(params[:id])
  end
  
  def update
    # Find object using form parameters
    @section = Section.find(params[:id])
    # Save the object
    if @section.update_attributes(params[:section])
      # If update succeeds, redirect to the show action
      flash[:notice] = "Section updated!"
      redirect_to(:action => "show", :id => @section.id)
    else
      # If save fails, redisplay the form so user can fix probolemos
      render("edit")
    end
  end
  
  def delete
    @section = Section.find(params[:id])
  end
  
  def destroy
    Section.find(params[:id]).destroy
    flash[:notice] = "Section destroyed!"
    redirect_to(:action => "list")    
  end
  
end
