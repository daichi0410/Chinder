Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :users
  # root "top#index"

  # ここの行を追加する
  devise_for :users
  root "top#index"
  # indexを追加する
  resources :users, only: %i(index show)
  resources :reactions, only: %i(create)

    # matchingコントローラーのindexアクションのルーティングを追加
    resources :matching, only: %i(index)
    resources :chat, only: %i(create show)
end
