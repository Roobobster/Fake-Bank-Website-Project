class HomeController < ApplicationController

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

  def index
    generateGreeting
    @logged_in = true;
    @username = "Wenyu";
  end

end
