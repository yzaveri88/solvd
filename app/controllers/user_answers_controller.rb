class UserAnswersController < ApplicationController
  def create
    @user_answer = UserAnswer.new(user_answer_params)
    @quiz_session = QuizSession.find(params[:quiz_session_id])
    @user_answer.quiz_session = @quiz_session
    @user_answer.save

    @next_question = @user_answer.answer.next_question
    if @next_question
      redirect_to quiz_session_question_path(@quiz_session, @next_question)
    else
      redirect_to
    end
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:answer_id)
  end
end
