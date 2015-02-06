class Lesson < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many   :results, dependent: :destroy

  validates :name, presence: true
  validates :user, presence: true
  validates :category, presence: true
end