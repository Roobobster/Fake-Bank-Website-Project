class ProfilesController < ApplicationController
  protect_from_forgery

  def index
    @profiles=Profile.order('username ASC')
  end

  def new
    @newProfile=Profile.new
  end

  def show
    @profile=Profile.find(params[:id])
  end

  def edit
    @profile=Profile.find(params[:id])
  end

  def update
    @profile=Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to(profile_path(@profile))
    else
      render('edit')
    end
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.admin = true;
    @isValid = @profile.save;
    if(@isValid)
        redirect_to(profiles_path)
    else
      render('new')
    end

  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to(profiles_path)
  end

  private

    def profile_params
      params.require(:profile).permit(:username, :password, :address, :email, :telephone, :first_name, :last_name, :age, :gender, :admin)
    end
  

end
