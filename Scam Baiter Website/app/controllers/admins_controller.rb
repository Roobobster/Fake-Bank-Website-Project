class AdminsController < ApplicationController
  def index
    @users=Profile.order('username ASC')
  end

  def show
    @user=Profile.find(params[:id])
  end

  def new
    @user=Profile.new
  end

  def create
    @user = Profile.new(user_params)
    if @user.save
      redirect_to(admins_path)
    else
      render('new')
  end

  def edit
    @user=Profile.find(params[:id])
  end

  def update
    @user=Profile.find(params[:id])
    if @user.update(user_params[:id])
      redirect_to(admin_path(@user))
    else
      render('edit')
    end
  end

  private
    def user_params
      params.require(:username, :password, :admin).permit(:email, :password, :address, :telephone, :first_name, :last_name, :age, :gender)
    end
  end
end
