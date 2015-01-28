Rails.application.routes.draw do
  get 'home/index'
  get 'home/about'


  devise_for :users
  resources :requests

  resources :projects

  resources :products

  resources :sources

  root 'home#index'

end
