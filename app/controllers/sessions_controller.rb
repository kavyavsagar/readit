class SessionsController < ApplicationController
  skip_before_action :authenticate_user
  
  def new
    # render the login form
  end

  def create
    user = User.find_by(email: user_params[:email])

    if user.present? && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.email.to_s.split('@')[0]
      session[:is_admin] =  if user.user_type then true else false end 
      redirect_to root_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user_name] = nil
    session[:is_admin] = nil
    redirect_to login_url, alert: "You are logged out successfully !"
  end

  private

  def user_params
    params.require(:email)
    params.require(:password)
    params.permit(:email, :password)
  end
end