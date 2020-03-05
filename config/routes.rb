Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  mount ActionCable.server => "/cable"
  
  resources :users, only: [:show] do
=======
  resources :users, only: [:show, :index] do
    post 'request_friendship'
    post 'accept_request'
    post 'decline_request'
    post 'remove_friend'
>>>>>>> master
    resources :donations, only: [:index]
  end

  resources :items, only: [:show] do
    resources :donations, only: [:new, :create]
  end
  resources :items, only: [:index]

  resources :chat_rooms, only: [:show] do
    resources :messages, only: [:create]
  end
end
