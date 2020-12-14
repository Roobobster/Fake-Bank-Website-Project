Rails.application.routes.draw do
 
  get "accounts/index", to: "accounts#index"
  post "accounts/index", to: "accounts#create"

  resources :admins do
    member do
      get :delete
    end
  end

  root 'home#index'
  get 'faqs/index'

  get 'home/index'
  get 'contact/index'

  resources :profiles 

  resources :accounts do
    resources :transactions do
      member do
        get :delete
      end

      collection do 
        get 'add_rand_trans'
      end
    end
  end

  get 'profile/view'
 
  # get "accounts/index", to: "accounts#index", as: "index"

  get "accounts/viewedit", to: "accounts#viewedit", :as => :edit_acc_view
  post "accounts/:id/", to: "accounts#updateaccount"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'


end
