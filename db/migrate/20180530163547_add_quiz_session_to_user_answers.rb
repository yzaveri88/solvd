class AddQuizSessionToUserAnswers < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_answers, :quiz_session, foreign_key: true
  end
end
