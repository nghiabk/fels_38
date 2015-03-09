class Word < ActiveRecord::Base
  belongs_to :category
  has_many  :answers, dependent: :destroy
  has_many  :learns, dependent: :destroy

  validates :content, presence: true
  validates :category, presence: true

  accepts_nested_attributes_for :answers, allow_destroy: true
end