class SolarsController < ApplicationController
    before_action :authorized?
    def new
        @sites = user.location
        # byebug
        
    end


    def create
        byebug
        @solar = Solar.new(solar_params)
        @solar.location = Location.find(params[:solar_site])
        # @city = session[:city]
        # @state = session[:state]
        # @solar.location = @city +", "+ @state



        api_result = Solar.solar_data(@solar.location.address_repr)
        @solar.ac_annual = api_result[:ac_annual]
        session[:ac_annual] = @solar.ac_annual
        @solar.solrad_annual = api_result[:solrad_annual]
        session[:solrad_annual] = @solar.solrad_annual
        if @solar.valid?
            @solar.save
            redirect_to results_path #(@solar.location)
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

