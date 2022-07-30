Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create]
  resources :products, only: [:index, :show, :create]
  resources :user_oils, only: [:index, :show, :create, :destroy]

  patch "/user_oils/:id", to: "user_oils#update"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
