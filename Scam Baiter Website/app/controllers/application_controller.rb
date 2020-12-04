class ApplicationController < ActionController::Base
  include SessionsHelper
  
  protect_from_forgery with: :exception

helper_method :current_user
helper_method :logged_in?

  def current_user
    if session[:user_id]
        Profile.find_by(id: session[:user_id])
    end
end

def logged_in?
    !current_user.nil?
end
end
