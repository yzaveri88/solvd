class LastQuestionsController < ApplicationController
  def show
    @quiz_session = QuizSession.find(params[:quiz_session_id])
    @question = @quiz_session.quiz.questions.find {|question| !question.answered?(@quiz_session)}
    # find the question that is not yet answered by the user of this quiz session
    @user_answer = UserAnswer.new


    unless @question
      # redirect to result
    end
    # show the question

  end
end
