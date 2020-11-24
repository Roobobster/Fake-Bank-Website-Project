class ProfileController < ApplicationController
  layout false
  def view
    profile = Profile.where(first_name: params[:first_name]).first
    if(profile == nil)
      profile = Profile.new
      #For creating users for later
      profile.email = 'robhealless@gmail.com'
      profile.password = 'password'
      profile.address = '4 Something lane'
      profile.telephone = '44568487473985'
      profile.first_name = 'Robert'
      profile.last_name = 'Healless'
      profile.age = 20
      profile.gender = 'Male'
      @isNew = profile.new_record?
      profile.save
    end


    # To view you would give it a query with the first name e.g http://localhost:3000/profile/view?first_name=Robert
    @robertUser = Profile.where(first_name: params[:first_name]).first
  
  end
end
