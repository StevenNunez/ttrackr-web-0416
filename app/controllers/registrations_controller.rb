class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      # sign_in_user(user)
      session[:user_id] = user.id
      redirect_to root_path, notice: "You've been logged in"
    else 
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
