Rails.application.routes.draw do

  get 'faqs/index'

  root 'home#index'

  get 'home/index'

  get 'contact/index'

  get 'profile/view'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
