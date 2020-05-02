class Admin::UsersController < ApplicationController
    before_action :require_login
    before_action :check_admin

    def index
        @users = User.all
    end


end