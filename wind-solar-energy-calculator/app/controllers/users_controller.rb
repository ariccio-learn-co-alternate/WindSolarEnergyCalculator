require 'securerandom'

class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id
        redirect_to locations_path
    end

    def guestcreate
        rand_name = SecureRandom.uuid
        rand_password = SecureRandom.uuid
        @user = User.create(name: rand_name, username: rand_name, password: rand_password)
        session[:user_id] = @user.id
        redirect_to locations_path
    end
    def edit
    end
    def update
    end


    def user_params
        # byebug
        params.require(:user).permit(:name, :password, :username)
    end
end
