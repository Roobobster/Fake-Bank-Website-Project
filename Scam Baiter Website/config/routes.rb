Rails.application.routes.draw do

  get 'admin/index'
  # get '/admin/:id', to: 'admin#show'

  get 'faqs/index'

  root 'home#index'

  get 'home/index'

  get 'contact/index'

  get 'profile/view'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  #resources :sessions #, only: [:new, :create, :destroy]  get 'signup', to: 'profile#new', as: 'signup'
  #get 'login', to: 'sessions#new', as: 'login'
  #get 'logout', to: 'sessions#destroy', as: 'logout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
