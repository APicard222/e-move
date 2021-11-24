Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :vehicles, only: %i[index show new create edit update] do
    resources :reservations, only: %i[new create]
  end
  resources :reservations, only: %i[index destroy]
end
