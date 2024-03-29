class SessionsController < ApplicationController
  def new
  end


  def create
    user=Profile.find_by(username: params[:session][:username].downcase)
   
    if user && user.authenticate(params[:session][:password]) 
      log_in(user)
      if user.admin==true
        redirect_to(profiles_path)
      else
        redirect_to(root_path)
      end
    else
      flash.now[:alert] = "username or password is invalid"
      render "new"
    end
  end


  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end

end