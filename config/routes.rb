Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server => "/cable"

  resources :users, only: [:show, :index, :edit, :update, ] do
    post 'request_friendship'
    post 'accept_request'
    post 'decline_request'
    post 'remove_friend'
    get 'link'
    resources :donations, only: [:index]
  end

  resources :items do
    resources :donations, only: [:new, :create]
    get 'borrow', to: 'chat_rooms#borrow', as: :borrow
  end
  # resources :items, only: [:index]

  resources :chat_rooms, only: [:index, :show, :new, :create] do
    resources :messages, only: [:create]
  end

  resources :looks

end
