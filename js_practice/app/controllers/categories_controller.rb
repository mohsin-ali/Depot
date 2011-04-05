class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  
  def show
    #debugger
    cat_id = params[:id]
    @category = Category.find(cat_id)
  end
  
  def new
    @test = "OUT"
#    if params.request
#      @test = "IN"
#    end
  end
  
  def edit
    @cat_id = params[:id]
    @category = Category.find(params[:id]);      
  end
  
  def update    
    @category = Category.find(params[:id])
    @category.update_attributes(params[:category])
    
    flash[:notice] = "Category has been updated"
    
    redirect_to :controller => "categories"
  end
  
  def destroy
    debugger
    @category = Category.find(params[:id])
    @category.destroy
  end

end
