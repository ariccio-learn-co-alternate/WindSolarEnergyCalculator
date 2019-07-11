class SolarsController < ApplicationController
    before_action :authorized?
    def new
        @sites = user.location
        # byebug
        
    end


    def create
        # byebug
        @solar = Solar.new(solar_params)
        # byebug
        @solar.location = Location.find(params[:location_id])
        # @city = session[:city]
        # @state = session[:state]
        # @solar.location = @city +", "+ @state



        api_result = Solar.solar_data(@solar.location.address_repr, @solar.capacity, @solar.tilt)
        @solar.ac_annual = api_result[:ac_annual]
        # byebug
        session[:ac_annual] = @solar.ac_annual
        @solar.solrad_annual = api_result[:solrad_annual]
        session[:solrad_annual] = @solar.solrad_annual
        if @solar.valid?
            @solar.save
            redirect_to location_results_show_path(params[:location_id]) #(@solar.location)
            #redirect_to locations_show_path(@solar.location)
        else
            byebug
            redirect_to solars_new_path
        end
    end

    def solar_params
        params.require(:solar).permit(:capacity, :tilt, :solar_site)
    end
end

