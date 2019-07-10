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
        
    end


    def results
        # lookup the state for the city in params
        @city = params[:city]
        stateobj = WindValue.find_by(city: @city)  # go into Location table
        @state = stateobj.state
        @speed = stateobj.speed

        @windiest_cities=
            WindValue.all.sort_by do |c|
                c.speed
            end
        @annual_wind_energy = annual_turbine_energy
    end

    def annual_turbine_energy
        @rotor_diam_ft = 18
        
        return (0.01328 * (@rotor_diam_ft**2) * (@speed**3) )
        
        # byebug
        # for strech goals, will add multiple locations. For now, make sure it's empty.
        user.location << Location.create!(state: @state, city: @city, user: user)
    end


    def show
        # byebug
        @location = Location.find(params[:id])
    end


    private

    def search_params
        params.require(:state).permit(:state)
    end

    def results_params
        params.require(:city).permit(:city)
    end

end