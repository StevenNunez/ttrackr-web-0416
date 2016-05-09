class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      # Go somewhere awesome
    else
      redirect_to sign_in_path, notice: "Bad username or password"
    end
  end
end
