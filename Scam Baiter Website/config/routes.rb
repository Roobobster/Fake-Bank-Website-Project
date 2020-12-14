Rails.application.routes.draw do

  resources :admins do
    member do
      get :delete
    end
  end

  root 'home#index'
  get 'faqs/index'

  get 'home/index'
  get 'contact/index'

  get 'faqs/index'

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


  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
