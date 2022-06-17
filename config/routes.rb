Rails.application.routes.draw do

  root 'oils#index'

  resources :oils, only: [:index, :show]
  resources :users, only: [:show, :create]

  post "/login", to: "sessions#create"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
