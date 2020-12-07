class SessionsController < ApplicationController
  def new
  end


  def create
    user=Profile.find_by(username: params[:session][:username].downcase)
   
    if user && user.authenticate(params[:session][:password]) && user.admin==true
      log_in(user)
      redirect_to('http://localhost:3000')
      
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