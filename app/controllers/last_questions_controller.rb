class LastQuestionsController < ApplicationController
  def show
    @quiz_session = QuizSession.find(params[:quiz_session_id])
    @question = @quiz_session.quiz.questions.find {|question| !question.answered?(@quiz_session)}
    # find the question that is not yet answered by the user of this quiz session
    @user_answer = UserAnswer.new

    base = 5
    num_answers = current_user.user_answers.where(quiz_session: @quiz_session).count + 1
    @progress = num_answers.fdiv(base)

    unless @question
      # redirect to result
    end

    # show the question

  end
end
