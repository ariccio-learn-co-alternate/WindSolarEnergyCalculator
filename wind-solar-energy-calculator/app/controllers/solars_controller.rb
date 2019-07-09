class SolarsController < ApplicationController
    before_action :authorized?
    def new
        
    end

    def create
        byebug
        @solar = Solar.new(solar_params)
        @solar.location = user.location
        if @solar.valid?
            @solar.save
            redirect_to locations_path
        else
            byebug
            redirect_to solars_new_path
        end
    end

    def solar_params
        params.require(:solar).permit(:capacity, :tilt)
    end
end