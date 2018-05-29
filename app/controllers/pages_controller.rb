class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]
  before_action :authenticate_user!, :except => [:home]

  def home
    # show logo for 2 seconds and redirect to index categories page
  end

  def profile
    #access to profile page
    @user = current_user
  # end


  # def edit
  #   @user = current_user
  # end

  # def update
    @user.update(user_params)
    redirect_to page_path
  # end

  # def destroy
  #   @user = current_user
    @user.destroy
    redirect_to  category_index_path
  end


  def continue
    # navigation bar - go back to quizzes
     @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password)
  end
end
