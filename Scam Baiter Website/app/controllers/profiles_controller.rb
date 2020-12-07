class ProfilesController < ApplicationController
  protect_from_forgery
  layout false

  def show
    @loaded_profile = Profile.find(params[:id])
  end

  def index
   
  end

  def new
    @profile = Profile.new
  end

  def create
    
    @profile = Profile.new(profile_params)
    @isValid = @profile.save;
    if(@isValid)
        redirect_to(profile_path(@profile.id))
    else
      render('new')
    end

  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

    def profile_params
      params.require(:profile).permit(:username, :password, :address, :email, :telephone, :first_name, :last_name, :age, :gender)
    end

end
