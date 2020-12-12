class AdminController < ApplicationController
  def index
    @users=Profile.order('username ASC')
  end

  def show
    @user=Profile.find(params[:id])
  end

end
