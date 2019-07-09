Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'welcome/index'
 
  root 'landing#index'

  #Users
  get '/welcome', to: "users#welcome"
  get "/login", to: "users#login"
  get "/create", to: "users#create"

  #Locations
  get "/index", to: "locations#index", as: "locations"
  post "/results", to: "locations#results", as: "results"

end
