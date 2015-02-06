class Learn < ActiveRecord::Base
  belongs_to :user
  belongs_to :word

  validates :word, presence: true
  validates :user, presence: true
end
