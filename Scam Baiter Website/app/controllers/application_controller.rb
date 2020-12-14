class ApplicationController < ActionController::Base
  include SessionsHelper
  
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :logged_in?

  before_action :generateGreeting

  #def current_user
  #  if session[:user_id]
  #      Profile.find_by(id: session[:user_id])
  #  end
  #end

  def current_user
    return unless session[:user_id]
    @current_user ||= Profile.find(session[:user_id])
  end

  def logged_in?
      !current_user.nil?
  end

  def generateGreeting
    current_time = Time.now.to_i
    midnight = Time.now.beginning_of_day.to_i
    noon = Time.now.middle_of_day.to_i
    five_pm = Time.now.change(:hour => 17 ).to_i
    eight_pm = Time.now.change(:hour => 20 ).to_i

    if midnight.upto(noon).include?(current_time)
      @greeting = "Good Morning"
    elsif noon.upto(five_pm).include?(current_time)
      @greeting =  "Good Afternoon"
    elsif five_pm.upto(eight_pm).include?(current_time)
      @greeting = "Good Evening"
    elsif eight_pm.upto(midnight + 1.day).include?(current_time)
      @greeting = "Good Night"
    end
  end
  
end
