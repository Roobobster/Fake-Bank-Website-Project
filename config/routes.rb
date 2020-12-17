Rails.application.routes.draw do
 

  root 'home#index'
  get 'faqs/index'

  get 'home/index'
  get 'contact/index'
  get 'home/register'

  resources :accounts
  resources :profiles 

  resources :admins do
    member do
      get :delete
    end
  end

  resources :transactions do
      member do
        get :delete
      end

      collection do 
        get 'add_rand_trans'
      end
    end

 

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'


end
