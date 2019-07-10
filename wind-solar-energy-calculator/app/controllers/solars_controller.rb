class SolarsController < ApplicationController
    before_action :authorized?
    def new
        @sites = user.location
        # byebug
        
    end


    def create
        # byebug
        @solar = Solar.new(solar_params)
        @solar.location = Location.find(params[:solar_site])

        api_result = Solar.solar_data(@solar.location.address_repr)
        @solar.ac_annual = api_result[:ac_annual]
        @solar.solrad_annual = api_result[:solrad_annual]
        if @solar.valid?
            @solar.save
            redirect_to locations_show_path(@solar.location)
        else
            byebug
            redirect_to solars_new_path
        end
    end

    def solar_params
        params.require(:solar).permit(:capacity, :tilt, :solar_site)
    end
end