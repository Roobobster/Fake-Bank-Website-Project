class AccountsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def view
        profile_id = nil
        if (helpers.logged_in?)
            profile_id = helpers.current_user.id
        else
            profile_id = 2
        end
        # p profile_id
        @accountlist = Account.where('profile_id = ?', profile_id) #This becomes the list of accounts the current profile has
        # p @accountlist.size
    end

    
    def account_params
        params.require(:account).permit(:account_type)
    end

    def new
        @account = Account.new
    end

    def show
        @current_account = Account.find(params[:accid])
    end

    def viewedit
        id = params[:accid]
        p "ID SELECTED:"
        p id
        @match = Account.find(id)
        @match_picks = @match.match_picks
        redirect_to "accounts/editacc"
    end

    def updateaccount
        myparams = params.require(:account).permit(:account_type)
        id = params[:accid]
        p "ID SELECTED TO UPDATE:"
        p id
        p myparams[:account_type]
        Account.update(id, account_type: myparams[:account_type], updated_at: DateTime.now)    
        redirect_to "/accounts"   
    end

    def create
        #@account = Account.new(account_params)
        profile_id = nil
        if (helpers.logged_in?)
            profile_id = helpers.current_user.id
            p "Profile: "
            p profile_id
        else
            p "Not logged in"
            profile_id = 2
        end
        if (profile_id)
            acctype = account_params[:account_type]
            p acctype
            @account = Account.create(profile_id: profile_id, account_type: acctype, amount: 0.0, )
            @account.save
            p "Created account with type"
            p @account.account_type
            if (@account.save)
                p "Saved acc"
                redirect_back(fallback_location: root_path)
            else
                puts @account.errors.messages.inspect
                p "Not saved acc"
            end
            
        end
    end

    def update
    
    end

    def index
        view
    end
    
  end
  