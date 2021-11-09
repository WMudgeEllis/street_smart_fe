class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    if current_user.nil?
      redirect_to root_path
    end
  end

  def login_redirect
    redirect_to dashboard_path if current_user
  end
end
