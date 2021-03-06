class UsersController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:new, :create]
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to new_user_user_interest_path(@user)
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
    end



    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :admin)
    end
end
