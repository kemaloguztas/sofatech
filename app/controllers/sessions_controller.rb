class SessionsController < ApplicationController
    def login
      @user = User.new
    end

    def create
      @user = User.find_by(email: params[:email], password_digest: params[:password_digest]) # hacky solution

      if @user
        session[:user_id] = @user.id
        @user.admin == true ? redirect_to(requests_path) : redirect_to(new_request_path)
      else
        redirect_to login_path
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to login_path
    end
end