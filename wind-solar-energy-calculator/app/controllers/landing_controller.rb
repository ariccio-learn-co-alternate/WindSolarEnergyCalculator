class LandingController < ApplicationController
    def index
        if logged_in?
            redirect_to locations_path
        end
    end
end
