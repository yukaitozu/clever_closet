Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:show] do
    resources :donations, only: [:index]
  end

  resources :items, only: [:show] do
    resources :donations, only: [:new, :create]
  end
  resources :items, only: [:index]
end
