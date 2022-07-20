Rails.application.routes.draw do
  resources :all_products, only: [:index, :show, :create]
  root 'oils#index'
  resources :oils, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show, :create]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
