class Word < ActiveRecord::Base
  belongs_to :category
  has_many  :answers, dependent: :destroy
  has_many  :learns, dependent: :destroy

  validates :content, presence: true
  validates :meaning, presence: true
  validates :category, presence: true

  accepts_nested_attributes_for :answers, allow_destroy: true
  validate :has_correct_answer
  validate :not_duplicate_answer
  validate :not_duplicate_word_in_category

  def get_correct_answer
    answers.each do |answer| 
      if answer.correct?
        return answer
      end
    end    
  end

  private
  def has_correct_answer
    unless answers.any? {|answer| answer.correct?}
      errors.add(:base, "Word must have one correct answer!")
    end
  end

  def not_duplicate_answer
    arr = []
    answers.each do |answer|
      arr.push answer.content.strip
    end  
    unless arr.uniq.length == arr.length
      errors.add(:base, "Answers of a word can not duplicated")
    end  
  end

  def not_duplicate_word_in_category
    word = Word.all.where category: self.category
    word.each do |word|
      if self.content.strip == word.content.strip
        errors.add(:base, "Word has existed in this category")
      end  
    end  
  end
end