class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thanks for Joining Slack Overflow!"
      redirect_to "/questions"
    else
      render "new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :email)
  end

end
