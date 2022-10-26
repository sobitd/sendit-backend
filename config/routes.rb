Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root to: "main#index"

 
  resources :sessions, only: [:create]
  post "/login", to: "sessions#create"
  # get "/login", to: "sessions#new"

  # get "/signup", to: "users#new"


  post "/signup", to: "users#create"

  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  resources :users, only: [:index, :create, :show]
end
