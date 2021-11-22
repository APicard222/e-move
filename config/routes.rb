Rails.application.routes.draw do
  root to: 'pages#home'
  resources :vehicles, only: %i[index show new create]
end
