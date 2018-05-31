class Question < ApplicationRecord
  belongs_to :quiz
  belongs_to :parent_answer, class_name: 'Answer', optional: true
  has_many :answers, dependent: :destroy
end




