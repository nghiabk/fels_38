class CategoriesController < ApplicationController
  before_action :logged_in_user
  before_action :admin_user, only: [:new, :edit, :create, :update, :destroy]

  def index
    @categories = Category.paginate page: params[:page]
    @category = Category.new
  end

  def new
    @category = Category.new
  end 

  def create
    @category = Category.new category_params
    respond_to do |format|
      if @category.save
        format.html {redirect_to categories_url}
        format.js {@categories = Category.all}
      else
        format.html {render 'new'}
        format.js {render :js => "window.location.pathname='#{new_category_path}'"}
      end  
    end
  end 

  def edit
    @category = Category.find params[:id]
  end

  def update
    @category = Category.find params[:id]
    if @category.update_attributes category_params
      flash[:success] = "Category updated"
      redirect_to categories_url
    else
      render 'edit'
    end  
  end
  
  def destroy
    Category.find(params[:id]).destroy
    @categories = Category.all
    respond_to do |format|
      format.html
      format.js
    end  
  end  

  private
  def category_params
    params.require(:category).permit :name
  end 
end
