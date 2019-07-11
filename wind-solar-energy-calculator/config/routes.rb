Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'welcome/index'
 
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  get '/signup-as-guest', to: 'users#guestcreate', as: 'guest'


  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  post '/sessions', to: 'sessions#create'
  root 'landing#index'

  #Locations
  get "/locations", to: "locations#index", as: "locations"
  post "/state", to: "locations#state"
  get "/state", to: "locations#state", as: "states"
  #post "/state", to: "locations#solar_input"  #10:38 AM
  get "/solar_input", to: "locations#solar_input", as: "solar_input"
  #post "/results", to: "locations#results"
  get "/results", to: "locations#results", as: "results"



  # get '/solars/new', to: 'solars#new'
  post '/solars/', to: 'solars#create'

  get '/locations/:id/new', to: 'solars#new', as: 'solars_new'
  get '/locations/:id/results', to: 'locations#results', as: 'location_results_show'
  get '/solars/:id', to: 'solars#show', as: 'solars_show'
end
