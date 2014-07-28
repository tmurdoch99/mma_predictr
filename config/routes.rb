Rails.application.routes.draw do
  resources :predictions
  

  resources :ufcs do
  resources :predictions
  end

  resources :fights

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
