class SessionsController < ApplicationController
  before_action :unauthenticated_only, only:[:new, :create]
  def new
  end

  def create
    if user = User.authenticate(params[:username], params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "You have been logged in"
    else
      flash[:error] = "Bad Username or password"
      redirect_to sign_in_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You have been logged out"
  end
end
