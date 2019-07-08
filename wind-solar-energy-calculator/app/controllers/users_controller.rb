class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id
        redirect_to locations_path
    end
    def edit
    end
    def update
    end


    def user_params
        # byebug
        params.require(:user).permit(:password, :username)
    end
end
