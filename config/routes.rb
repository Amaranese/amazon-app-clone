Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'top/index'

  resources :users
  resources :tag_product_maps
  resources :products
  resources :tags
  resources :sites


  get    '/welcome', to: "sessions#new",     as: :welcome
  post   '/login',   to: "sessions#create",  as: :login
  delete '/logout', to:  "sessions#destroy", as: :logout

  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index' 
end

