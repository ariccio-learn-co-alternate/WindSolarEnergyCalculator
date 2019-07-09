Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'welcome/index'
 
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  get '/signup-as-guest', to: 'users#guestcreate', as: 'guest'


  get '/locations', to: 'locations#show'

  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  post '/sessions', to: 'sessions#create'
  root 'landing#index'

  #Users
  get '/welcome', to: "users#welcome"
  get "/login", to: "users#login"
  get "/create", to: "users#create"

  #Locations
  get "/index", to: "locations#index", as: "locations"
  post "/results", to: "locations#results", as: "results"

end
