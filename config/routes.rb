Rails.application.routes.draw do

  resources :travels
  resources :products
  
  devise_for :users, controllers: { registrations: "user_registrations" }
  resources :users

  resources :articles do
      resources :comments do
        collection do
          put :approve
        end
      end
    end

  
  get 'static/index'
  get 'static/about'
  get 'static/shop'

  root 'static#index'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
