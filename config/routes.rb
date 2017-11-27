Rails.application.routes.draw do
  resources :users
  get 'static/index'
  get 'static/about'

  root 'static#index'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
