class QuestionsController < ApplicationController

  def show
    @sub_category = SubCategory.find(params[:id])
    @question = Question.find(params[:id])
    @quiz = Quiz.find(params[:id])
    # answers show - show the answers connected to the question _id
    # save answers connected to the user_answer and to the question
  end



  def result

  end
end
