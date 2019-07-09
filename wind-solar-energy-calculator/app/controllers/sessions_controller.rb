class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to locations_path
        else
            # byebug
            redirect_to login_path
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path
    end
end
