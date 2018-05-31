class QuestionsController < ApplicationController

  def search
    if params[:query].present?
      @sub_category = SubCategory.where("name ILIKE ?", "%#{params[:query]}%").first
      @quiz = @sub_category.quiz
    end


    # Default is quiz 1, to be removed
    @quiz ||= Quiz.first


    @quiz_session = QuizSession.create(quiz: @quiz, user: current_user)
    @questions = @quiz.questions

    redirect_to quiz_quiz_session_question_path(@quiz, @quiz_session, @questions.first)
  end

  def show
    @quiz = Quiz.find(params[:quiz_id])
    @quiz_session = QuizSession.find(params[:quiz_session_id])
    base = @quiz.questions.count || 5
    num_answers = current_user.user_answers.where(quiz_session: @quiz_session).count + 1
    @progress = num_answers.fdiv(base)

    # @sub_category = SubCategory.find(params[:id])
    # @question = Question.find(params[:id])
    # @quiz = Quiz.find(params[:id])
    # answers show - show the answers connected to the question _id
    # save answers connected to the user_answer and to the question

  end


  def result

  end
end
