Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index] do
    post 'request_friendship'
    post 'accept_request'
    post 'decline_request'
    post 'remove_friend'
    resources :donations, only: [:index]
  end

  resources :items, only: [:show, :new, :create] do
    resources :donations, only: [:new, :create]
  end
  resources :items, only: [:index]
end
