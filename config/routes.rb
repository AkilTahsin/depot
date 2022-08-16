Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  get 'hey_there/one'
  get 'hey_there/two'
  get 'hey_there/three'
  root 'store#index', as: 'store_index'
  resources :products

  resources :products do
    get :who_bought, on: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
