Rails.application.routes.draw do
  get 'newsletter/index'

  get 'newsletter/show'

  get 'newsletter/new'

  resources :travels
  resources :products
  resources :subscribers
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
  get 'subscribers/index'

  root 'static#index'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
