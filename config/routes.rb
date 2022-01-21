Rails.application.routes.draw do
  resources :reserves
  devise_for :users
  get 'home/index'
  root 'home#index'
end
