
Rails.application.routes.draw do
  root 'welcome#index' 
  devise_for :users
  resources :products

  # Defines the root path route ("/")
  # root "posts#index"

  post 'cart_products/:product_id', to: 'cart_products#create', as: 'add_to_cart'
  resources :carts, only: [:show] do
    patch 'checkout', on: :member
  end

  resources :products, only: [:index]

  resources :cart_products, only: [:new , :index]





end
