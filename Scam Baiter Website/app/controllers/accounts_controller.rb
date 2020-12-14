class AccountsController < ApplicationController
    #layout false
    def view
        profile_id = nil
        if (helpers.logged_in?)
            profile_id = helpers.current_user.id
        else
            #account1 = Account.create(profiles_id: 2, account_type: "Savings", amount: 0.0)
            #account1.save
            #profile_id = account1.profiles_id
            profile_id = 2
        end
        p profile_id
        @accountlist = Account.where('profile_id = ?', profile_id) #This becomes the list of accounts the current profile has
        p @accountlist.size
    end

    def new
    
    end

    def index
        view
    end
    
  end
  