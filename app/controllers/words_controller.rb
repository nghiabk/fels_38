class WordsController < ApplicationController
  def index
  end

  def create
    @category = Category.find params[:id]
    @words = @category.words
  end
end
