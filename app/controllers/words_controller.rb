class WordsController < ApplicationController
  before_action :logged_in_user
  before_action :get_category, only: [:new, :create]

  def index
    if params[:id].blank?
      @words = Word.all
    else
      @category = Category.find params[:id]
      @words = @category.words
    end
    @words = @words.paginate page: params[:page] 
  end

  def new
    @word = @category.words.build
    4.times {@word.answers.build}
  end

  def create
    @word = @category.words.new word_params
    if @word.save
      flash[:success]= "Add word success"
      redirect_to words_path
    else 
      flash.now[:danger] = "Not add"
      render 'new'
    end  
  end  

  def edit
    @word = Word.find params[:id]
  end  

  def update
    @word = Word.find params[:id]
    if @word.update_attributes word_params
      flash[:success] = "Update word success"
      redirect_to words_url
    else 
      render 'edit'
    end  
  end

  def destroy
    Word.find(params[:id]).destroy
    flash[:success] = "Delete success"
    redirect_to words_url
  end  

  private
  def word_params
    params.require(:word).permit :content, :meaning,
      answers_attributes: [:id, :content, :_destroy]
  end
    
  def get_category
    @category = Category.find params[:category_id]  
  end  
end
