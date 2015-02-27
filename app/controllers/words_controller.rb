class WordsController < ApplicationController
  before_action :logged_in_user

  def index
  end

  def create
    @category = Category.find params[:id]
    @words = @category.words
  end
end
