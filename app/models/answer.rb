class Answer < ActiveRecord::Base
  belongs_to :word
  has_many :results, dependent: :destroy

  validates :content, presence: true
  scope :show_result,->(list_id){where id: list_id}
end
