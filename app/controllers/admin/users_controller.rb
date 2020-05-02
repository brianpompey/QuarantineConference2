class Admin::UsersController < ApplicationController
    before_action :require_login

    def index
        if current_user.admin?
            @users = User.all
        else
            redirect_to root_path, alert: "Error! Admin privilege only"
        end
    end


end