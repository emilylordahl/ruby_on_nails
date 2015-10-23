Rails.application.routes.draw do
  root to: 'application#index'
  resources :users
  resources :colors

  # Login Form
  get 'sessions/new' => 'sessions#new'
  # Login the user
  post 'sessions' => 'sessions#create'
  # Logout the user
  delete 'sessions' => 'sessions#destroy'
end
