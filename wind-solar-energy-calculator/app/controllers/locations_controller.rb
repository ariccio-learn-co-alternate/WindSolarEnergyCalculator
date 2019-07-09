class LocationsController < ApplicationController

    
    def index
        #@location_query
        @search = Location.new
        @states = WindValue.all.map do |w|
            w.state
        end.uniq



        
        #byebug
        #@locations = Location.all
    
        #redirect_to results_path
    end


    def state 
        @search = params
        @wind_city_options = WindValue.all

    end


    def results

    end






    def show
        # byebug
    end


end
