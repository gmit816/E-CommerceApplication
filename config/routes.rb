Rails.application.routes.draw do
  get 'access/new'
  get 'access/create'
  post 'access/new', to: "access#create"
  get 'access/destroy'
  get 'admin/index'
  get 'admin', to: "admin#index"
  get 'login', to: "access#new"
  get 'authenticate', to: "access#create"
  delete 'logout', to: "access#destroy"
  

  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  get 'shopper/index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "shopper#index", as: 'shopper'
  get '/', to: 'shopper#index'
  get 'shopper', to: "shopper#index"
end
