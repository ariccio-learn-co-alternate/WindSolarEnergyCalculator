class LocationsController < ApplicationController

    
    def index
        @location_query = nil
        @wind_city_options = WindValue.all
        byebug
        #@locations = Location.all
    
        #redirect_to results_path
    end


    def results

    end





end