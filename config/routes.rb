Rails.application.routes.draw do
  resources :orders
  resources :products

  root to: 'visitors#index'

  get 'visitors/index'
  get 'visitors/about'
end
