Rails.application.routes.draw do

  root 'home#index'
  get 'home/index'

  get 'contact/index'

  get 'faqs/index'

  resources :profiles

  resources :transactions do
    member do
      get :delete
    end
  end

  resources :accounts  do
    member do
        get 'random_trans'
    end
  end

  # resources :accounts do
  #   member do
  #       get 'random_trans'
  #   end

  #   resources :transactions do
  #     member do
  #       get :delete
  #     end
  #   end
  # end

  get 'profile/view'
 
  # get "accounts/index", to: "accounts#index", as: "index"


  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  #resources :sessions #, only: [:new, :create, :destroy]  get 'signup', to: 'profile#new', as: 'signup'
  #get 'login', to: 'sessions#new', as: 'login'
  #get 'logout', to: 'sessions#destroy', as: 'logout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
