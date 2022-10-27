Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #root 'sessions#home'

  resources :users, only: [:create]
#  resources :parcels, only: [:create, :show, :update,:delete, :index]

post '/login', to: 'authentication#create'
get '/users', to: 'users#profile'
post "/users", to: 'users#create'

end
