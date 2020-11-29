class AccountController < ApplicationController
    layout false
    def view
        profile = Profile.where(first_name: params[:first_name]).first #Need to be logged in
        if(profile != nil)

        end
    end

    def make_account_for_profile(account)
    end

    
  end
  