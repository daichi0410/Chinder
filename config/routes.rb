Rails.application.routes.draw do
  devise_for :users
  root "top#index"
  # indexを追加する
  resources :users, only: %i(index show)
end
