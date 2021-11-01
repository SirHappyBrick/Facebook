Rails.application.routes.draw do
  devise_for :users
  resources :friends
  resources :forecasts, only: :index
  get 'home/index'
  root 'home#index'
  get 'home/about'
end
