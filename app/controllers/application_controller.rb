class ApplicationController < ActionController::Base
  protect_from_forgery
  private

  def current_user
    @_current_user ||= session[:user_id] && User.find(session[:user_id])
  end

  helper_method :current_user
  helper_method :logged_in?
  helper_method :is_admin?

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this action"
      redirect_to login_path
    end
  end

  def require_admin
    unless is_admin?
      redirect_to :root, :status => 403, :notice => 'Access denide'
    end
  end

  def logged_in?
    !!current_user
  end

  def is_admin?
    if current_user
      current_user.is_admin?
    else
      false
    end
  end

end
