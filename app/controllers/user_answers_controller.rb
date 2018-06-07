class UserAnswersController < ApplicationController
  def create
    @user_answer = UserAnswer.new()
    if params[:user_answer].present?
      @user_answer.answer_id = params[:user_answer][:answer_id][0].to_i
    end
    @quiz_session = QuizSession.find(params[:quiz_session_id])
    @user_answer.quiz_session = @quiz_session

    if @user_answer.save
      @next_question = @user_answer.answer.next_question
      if @next_question
        redirect_to quiz_session_question_path(@quiz_session, @next_question)
      else
        redirect_to beforeresult_path
      end
    else
      redirect_back fallback_location: root_path
    end
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:answer_id)
  end
end
