class Answer < ApplicationRecord
  belongs_to :question
  has_many :user_answers, dependent: :destroy
  has_one :next_question, class_name: "Question", foreign_key: :parent_answer_id
end
