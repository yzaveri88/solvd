class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def show
    # go back to unfinished quiz (quiz - user_answer - last_question)
    @user = current_user
    @sub_categories = SubCategory.all
    # @user_answer = UserAnswer.find(params[:id])
  end
end
