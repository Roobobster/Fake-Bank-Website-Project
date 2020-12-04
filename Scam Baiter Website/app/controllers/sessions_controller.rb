class SessionsController < ApplicationController
  def new
  end


  def create
    user=Profile.find_by(username: params[:session][:username].downcase)
   
   
    if user && user.authenticate(params[:session][:password]) && user.admin==true
      log_in(user)
      redirect_to('http://localhost:3000')
      
    else
      redirect_to('http://localhost:3000')
    end
  end


  def destroy
    log_out
    redirect_to('http://localhost:3000/profile/view?first_name=Robert')
  end

end
