
class LocationsController < ApplicationController
    before_action :authorized?
    
    def index
        @user = session[:user_id]
        @states 
        @states = WindValue.all.map do |w|
            w.state
        end.uniq.sort
        # byebug
    end


    def state  #search level 2 
        
        #session[:user_id][:state] = @state
        # undefined method `[]=' for 1:Integer
        
        @city = session[:city]
        @user = session[:user_id]
        @state = params[:state] 
        session[:state] = @state 
        @wind_city_options = WindValue.all 
    end


    def solar_input
        # byebug
        @city = params[:city]
        @state = session[:state]
        @site = @city + ", "+ @state
        # byebug
        session[:city] = @city
        # @id = 
        #@sites = user.location   # solar controller version
        user.location << Location.create!(state: @state, city: @city, user: user)
        @location_id = user.location.last.id
        session[:location_id] = @location_id
    end


    def results
        # lookup the state for the city in params
        
        # @city = params[:city]
        # session[:city] = @city
        @location = Location.find(params[:id])
        @city = @location.city
        stateobj = WindValue.find_by(city: @city)  # go into Location table
        #@state = stateobj.state
        @state = @location.state
        @speed = stateobj.speed
        session[:speed] = @speed

        @windiest_cities=
            WindValue.all.sort_by do |c|
                c.speed
            end
        @annual_wind_energy = annual_turbine_energy
        @cost = 15000
        @grid_energy_cost = 0.1326
        @monthly_savings = 0.1326 * @annual_wind_energy / 12
        @payback_pd = @cost / @monthly_savings /12 
        # for strech goals, will add multiple locations. For now, make sure it's empty.

        @site_id = @location.id
        # byebug
        @site = @location.solar

    end

    def annual_turbine_energy
        @rotor_diam_ft = 18
        return (0.01328 * (@rotor_diam_ft**2) * (@speed**3) )
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


