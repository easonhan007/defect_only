class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authorize

  protected 

  def authorize
    @current_user = User.find_by_id(session[:user_id])

    unless @current_user
      redirect_to login_url, notice: 'Please log in' and return false
    end #unless
  end

  def current_user
    return unless session[:user_id]
    @current_user
  end

  helper_method :current_user


end
