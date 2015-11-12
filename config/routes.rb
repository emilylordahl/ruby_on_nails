Rails.application.routes.draw do

  # Root Route
  root to: 'application#index'

  # Users Resource
  resources :users

  # Essie Colors API
  namespace :api do
    resources :colors
  end

  # Login Form
  get 'sessions/new' => 'sessions#new'
  # Login the user
  post 'sessions' => 'sessions#create', as: :login
  # Logout the user
  delete 'sessions' => 'sessions#destroy', as: :logout

end
