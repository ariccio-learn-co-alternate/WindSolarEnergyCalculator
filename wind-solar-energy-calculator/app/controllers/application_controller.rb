class ApplicationController < ActionController::Base
    helper_method :user
    helper_method :logged_in?
    helper_method :authorized?
    def user
        if session[:user_id]
            return User.find(session[:user_id])
        end
    end

    def logged_in?
        user
    end

    def authorized?
        redirect_to login_path unless logged_in?
    end
end
