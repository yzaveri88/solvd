class AddAnswertoQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :answer, index: true
  end
end
