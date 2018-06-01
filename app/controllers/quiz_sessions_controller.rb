class QuizSessionsController < ApplicationController
  def create
    @quiz = Quiz.find(params[:quiz_id])
    @quiz_session = current_user.quiz_sessions.where(quiz_id: @quiz.id).last
    unless @quiz_session && @quiz_session.uncompleted?
      @quiz_session = QuizSession.create(user: current_user, quiz: quiz)
    end

    redirect_to quiz_session_last_question_path(@quiz_session)
  end
end
