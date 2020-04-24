class SessionsController < ApplicationController

    def new
     
    end

    def create
        @user = User.find_by(name: params[:email])
        if @user
            return head(:forbidden) unless @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
        else
            redirect_to login_path
        end
    end


    def destroy
        session.delete("user_id")
        redirect_to root_path
    end
end
