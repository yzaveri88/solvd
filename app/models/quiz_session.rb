class QuizSession < ApplicationRecord
  belongs_to :quiz
  belongs_to :user

  def completed?
    user_answers.count == quiz.questions.count
  end

  def uncompleted?
    !completed?
  end
end
