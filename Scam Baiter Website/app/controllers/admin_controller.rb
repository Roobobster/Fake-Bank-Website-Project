class AdminController < ApplicationController
  def index
    @users=Profile.order('username ASC')
  end

  def show
    @user=Profile.find(params[:id])
  end

  def new
    @user=Profile.new
  end

  def edit
    @user=Profile.find(params[:id])
  end

  def update
    @user=Profile.find(params[:id])
    if @user.update(params[:id])
      redirect_to('http://localhost:3000/admin')
    else
      render('edit')
    end
  end

end
