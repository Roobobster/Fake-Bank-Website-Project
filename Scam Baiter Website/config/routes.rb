Rails.application.routes.draw do

  get 'faqs/index'
  root 'home#index'
  get 'home/index'
  get 'contact/index'

  resources :profiles
  resources :accounts

  get 'profile/view'
 
  get "accounts/index", to: "accounts#index"
  post "accounts/index", to: "accounts#create"

  get "accounts/viewedit", to: "accounts#viewedit", :as => :edit_acc_view
  post "accounts/:id/", to: "accounts#updateaccount"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  #resources :sessions #, only: [:new, :create, :destroy]  get 'signup', to: 'profile#new', as: 'signup'
  #get 'login', to: 'sessions#new', as: 'login'
  #get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
