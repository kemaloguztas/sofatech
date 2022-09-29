class ApplicationController < ActionController::Base
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
    current_user.present?
  end
end
