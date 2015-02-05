Rails.application.routes.draw do
  get 'home/index'
  get 'home/about'
  get 'home/projectv'
  get 'home/requestv'
  get 'home/sourcev'


  devise_for :users
  resources :requests

  resources :projects

  resources :products

  resources :sources

  root 'home#index'

end
