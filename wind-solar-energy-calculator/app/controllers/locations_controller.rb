class LocationsController < ApplicationController
    before_action :authorized?

    
    def index
        @user = session[:user_id] 
        @states 
        @states = WindValue.all.map do |w|
            w.state
        end.uniq.sort
    end


    def state  #search level 2 
        #session[:state] = @state  #Doesnt work

        #session[:user_id][:state] = @state
        # undefined method `[]=' for 1:Integer
 
        @user = session[:user_id]
        @state = params[:state] 
        
        @wind_city_options = WindValue.all
        Location.new(state: @state, solar_id: nil, wind_id: nil)
    end


    def results
        # lookup the state for the city in params
        @city = params[:city]
        stateobj = WindValue.find_by(city: @city)  # go into Location table
        @state = stateobj.state
    end


    def show
        # byebug
    end


    private

    def search_params
        params.require(:state).permit(:state)
    end
    def results_params
        params.require(:city).permit(:city)
    end

end