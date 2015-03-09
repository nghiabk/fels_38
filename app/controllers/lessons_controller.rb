class LessonsController < ApplicationController
  def show
    @category = Category.find params[:id]
    @lesson = Lesson.find_by category_id: params[:id]
    if @lesson.nil?
      redirect_to categories_path
    else  
      @words = @category.words.all.sample 20
    end
  end

  def index
    if params[:result]
      @question_list = params[:result]
      answer_ids = @question_list.values
      @answers = Answer.show_result answer_ids
    end
  end
end