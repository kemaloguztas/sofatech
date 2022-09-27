class SessionsController < ApplicationController
    def login
        @user = User.new
      end

    def create
        @user = User.find_by(email: params[:email], password_digest: params[:password_digest]) # hacky solution

        if @user
          session[:user_id] = @user.id
          redirect_to new_request_path
        else
          message = "Login is invalid!"
          redirect_to login_path, notice: message
        end
    end

    def destroy      
      session[:user_id] = nil     
      redirect_to login_path 
    end  
end