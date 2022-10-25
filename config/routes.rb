Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/users', to: 'users#index'
  resources :sessions, only: [:create]
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  # get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
end
