class SessionsController < ApplicationController

    def login
    end

    def new
        @user = User.new
      end

    def create
        @user = User.find_by(username: params[:username])

        if !!@user && @user.authenticate(session_params[:password])
          session[:user_id] = @user.id
          redirect_to user_path
        else
          message = "Login is invalid!"
          redirect_to login_path, notice: message
        end
    end
end