Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :vehicles, only: %i[index show new create edit update destroy] do
    resources :reservations, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
  resources :reservations, only: %i[index destroy]
end
