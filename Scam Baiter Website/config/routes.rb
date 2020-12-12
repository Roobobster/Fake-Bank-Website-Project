Rails.application.routes.draw do

  get 'admin/index'
  get '/admin/:id', to: 'admin#show'
  get '/admin/new', to: 'admin#new'
  post '/admin', to: 'admin#create'

  resources :admin do
    member do
      get :delete
    end
  end

  get 'faqs/index'

  root 'home#index'
  get 'faqs/index'
  get 'home/index'
  get 'contact/index'

  get 'profile/view'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get 'admin/index'
  get '/admin/:id', to: 'admin#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
