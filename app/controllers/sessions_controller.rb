class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end


    def destroy
        session.delete("user_id")
        redirect_to root_path
    end
end
