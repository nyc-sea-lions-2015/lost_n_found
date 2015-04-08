class SessionsController < ApplicationController
  def new
  end

  def create

    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
     flash[:notice] = "Invalid email or password"
     redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
  end
end
