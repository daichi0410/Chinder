Rails.application.routes.draw do
  devise_for :users
  root 'top#index'

  resources :reactions, only: %i(create)
end
