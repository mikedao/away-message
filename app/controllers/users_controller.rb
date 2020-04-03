class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def user_params
    params.permit(:username, :password, :email)
  end
end
