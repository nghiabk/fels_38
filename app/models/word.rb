class Word < ActiveRecord::Base
  belongs_to :category
  has_many  :answers
  has_many  :learns, dependent: :destroy

  validates :content, presence: true
  validates :category, presence: true
end
