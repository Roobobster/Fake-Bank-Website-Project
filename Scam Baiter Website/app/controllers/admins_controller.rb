class AdminsController < ApplicationController
  def index
    @users=Profile.order('username ASC')
  end

  def new
    @newuser=Profile.new
  end

  def show
    @user=Profile.find(params[:id])
  end

  

  def create
    @newuser = Profile.new(params[:admins])
    if @newuser.save
      redirect_to(admins_path)
    else
      render('new')
  end

  def edit
    @user=Profile.find(params[:id])
  end

  def update
    @user=Profile.find(params[:id])
    if @user.update(admin_params[:id])
      redirect_to(admin_path(@user))
    else
      render('edit')
    end
  end

  
    def admin_params
      params.require(:username, :password_digest, :admin).permit(:email, :password, :address, :telephone, :first_name, :last_name, :age, :gender)
    end
  end
end
