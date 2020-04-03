class SessionsController < ApplicationController
  def new
  end

  def create
    if user = User.find_by(username: params[:username])
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to dashboard_path
      else
        redirect_to root_path
      end
    else
      redirect_to '/'
    end
  end

  def destroy
    session.clear
    redirect_to root_url
  end
end
