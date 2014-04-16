class SessionsController < ApplicationController
  def new
    # @session = Session.new
  end


  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # flash[:notice] = "Logged In!"
      redirect_to "/questions"
    else
      flash[:alert] = "Invalid Entry!"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged Out!"
    redirect_to "/sessions/new"
  end


  # private
  # def session_params
  #   params.require(:session).permit()
  # end

end
