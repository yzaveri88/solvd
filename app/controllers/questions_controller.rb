class QuestionsController < ApplicationController

  def show
    @question = Question.find_by[:id]
    # answers show - show the answers connected to the question _id
    # save answers connected to the user_answer and to the question
  end



  def result

  end
end
