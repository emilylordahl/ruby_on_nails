Rails.application.routes.draw do
  root to: 'application#index'
  resources :colors
  resources :users
end
