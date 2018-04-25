class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user

  protected

  def authenticate_user
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, alert: "You couldnt get unauthorised access !"
    end
  end

  def current_user    
     @current_user ||= User.find_by(id: session[:user_id])
  end
  
end