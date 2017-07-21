class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private 

  helper_method :current_coach

  def current_coach
    @current_coach ||= Coach.find_by(id: session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to login_path, alert: 'Not authorized - you must be logged in!' if current_coach.nil?
  end
end
