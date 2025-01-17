class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :is_logged_in?

  def current_user
    session[:name]
  end

  def is_logged_in?
    if current_user == nil || current_user == ""
      redirect_to login_path
    end
  end

  def homepage
    is_logged_in?
  end

end
