Rails.application.routes.draw do
  resources :oils do
  get '/', to: 'oils#index'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
