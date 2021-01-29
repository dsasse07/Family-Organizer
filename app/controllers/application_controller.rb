class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorized
  helper_method :current_user, :logged_in?, :errors?

  def current_user 
    @current_user ||= Guardian.find_by(id: session[:guardian_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def authorized
    redirect_to(login_path) unless logged_in?
  end

  def home
    if logged_in?
      redirect_to family_path(@current_user.family)
    else
      redirect_to login_path
    end
  end

  def errors?
    !flash[:messages].nil? && !flash[:messages].empty?
  end
end 
