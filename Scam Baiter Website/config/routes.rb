Rails.application.routes.draw do

  #get 'admins/index'
  #get '/admins/:id', to: 'admins#show'
  #get 'admins/new', to: 'admins#new'
  #post 'admins', to: 'admins#create'


  get 'faqs/index'

  root 'home#index'
  get 'faqs/index'
  get 'home/index'
  get 'contact/index'

  resources :profiles 

  get 'profile/view'
 
  get "accounts/index", to: "accounts#index", as: "index"


  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
