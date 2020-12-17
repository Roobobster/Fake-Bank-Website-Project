class AccountsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :get_profile

    #def view
    #    profile_id = nil
    #    if (helpers.logged_in?)
    #        profile_id = helpers.current_user.id
    #    else
    #        profile_id = 2
    #    end
    #    p profile_id
    #    @accountlist = Account.where('profile_id = ?', profile_id) #This becomes the list of accounts the current profile has
    #    p @accountlist.size
    #end

    


    def new
        @account = Account.new
        @profile_id = params[:id];
    end

    def show
        @account = Account.find(params[:id])
        @profile_id = params[:id];
    end

    def edit
        @account= Account.find(params[:id])
        @profile_id = params[:profile_id];
    end

    def update
        @account = Account.find(params[:id])
       
        if @account.update(account_params)   
            redirect_to(account_path(params[:id]))
          else
            render('edit')
        end
    end

    def create
        @profile_id = params[:id];

        @account = Account.create(profile_id: @profile_id, account_type: account_params[:account_type], amount:  account_params[:amount] )
        @account.save

        redirect_to (accounts_path(id: @profile_id))
            
   
    end

    def destroy
        account = Account.find(params[:id])
        profile_id = account.profile_id
        account.destroy
        redirect_to(accounts_path(id: profile_id))
    end
    

    
    def index
        @profile_id = params[:id];
        @accounts = Profile.find(@profile_id).accounts.order('id ASC')
    end

    private

        def account_params
            params.require(:account).permit(:account_type, :amount)
        end

        def get_profile
            
        end



    
  end
  