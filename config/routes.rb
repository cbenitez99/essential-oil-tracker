Rails.application.routes.draw do
  root 'oils#index'
  resources :oils, only: [:index, :show]
  resources :users, only: [:show, :create]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
