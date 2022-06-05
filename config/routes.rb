Rails.application.routes.draw do

  root 'oils#index'

  resources :oils do
  get "/oils", to: 'oils#index'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
