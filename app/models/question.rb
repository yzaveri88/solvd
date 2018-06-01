class Question < ApplicationRecord
  belongs_to :quiz
  belongs_to :parent_answer, class_name: 'Answer', optional: true
  has_many :answers, dependent: :destroy

  def answered?(session)
    session.user_answers.any? do |user_answer|
      answers.include?(user_answer.answer)
    end
  end
end




