class LocationsController < ApplicationController
    before_action :authorized?
    
    def index
        @search
        @wind_city_options = WindValue.all

    
        @states = WindValue.all.map do |w|
            w.state
        end.uniq

        #@locations = Location.all
    
        #redirect_to results_path
    end


    def state 
    
    end


    def results

    end






    def show
        # byebug
    end


end
