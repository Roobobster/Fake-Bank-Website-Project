Rails.application.routes.draw do

  get 'faqs/index'

  root 'home#index'
  get 'faqs/index'
  get 'home/index'
  get 'contact/index'

  get 'profile/view'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :admins do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
