class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def log_in
    session[:user_id] = 1
    redirect_to root_url
  end

  def log_out
    session[:user_id] = nil
    redirect_to projects_url
  end
end
