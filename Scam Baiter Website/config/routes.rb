Rails.application.routes.draw do

  get 'faqs/index'

  root 'home#index'

  get 'home/index'

  get 'contact/index'

  get 'profile/view'
 
  get "accounts/index", to: "accounts#index", as: "index"


  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
