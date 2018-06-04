class QuestionsController < ApplicationController

  def search
    if params[:query].present?
      @sub_category = SubCategory.where("name ILIKE ?", "%#{params[:query]}%").first
      @quiz = @sub_category.quiz
    end

    # Default is quiz 1, to be removed
    # @quiz ||= Quiz.first

    @quiz_session = QuizSession.create(quiz: @quiz, user: current_user)
    @questions = @quiz.questions


    redirect_to quiz_session_question_path(@quiz_session, @questions.first)


  end

  def show

    # progress bar
    @quiz_session = QuizSession.find(params[:quiz_session_id])
    @quiz = @quiz_session.quiz
    base = @quiz.questions.count || 5
    # num_answers = current_user.user_answers.where(quiz_session: @quiz_session).count + 1
    # @progress = num_answers.fdiv(base)
    # @progress = 1.0


    #questions for each page
    # @quiz_show = Quiz.find(params[:id])
    # @questions = Question.where(params[:id])

    @question = Question.find(params[:id])
    @user_answer = UserAnswer.new
    # @answers = Answer.where(params[:question_id])

    # @category = Category.find(params[:id])
    # @sub_categories = SubCategory.where(params[:category_id])

    # @sub_category = SubCategory.find(params[:id])
    # @question = Question.find(params[:id])
    # @quiz = Quiz.find(params[:id])
    # answers show - show the answers connected to the question _id
    # save answers connected to the user_answer and to the question

  end


  def beforeresult
    @hide_footer = true
  end

end
