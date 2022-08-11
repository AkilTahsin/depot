Rails.application.routes.draw do
  get 'hey_there/one'
  get 'hey_there/two'
  get 'hey_there/three'
  root 'store#index', as: 'store_index'
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
