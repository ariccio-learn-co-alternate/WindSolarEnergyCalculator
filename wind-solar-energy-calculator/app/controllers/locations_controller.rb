
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
        session[:states] = @states
        @user = session[:user_id]
        session[:the_search] = params
        @the_search = session[:the_search]
        @search = params
        @state = params[:states] 
        @wind_city_options = WindValue.all
    end


    def results

    end


    def show
        # byebug
    end


    private

    def search_params
        params.require(:state).permit(:state)
    end

end
