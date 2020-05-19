class Admin::UsersController < ApplicationController
    before_action :require_login
    before_action :check_admin

    def index
    #    byebug
    #    @users = User.all.slice(1..-1)
        @users = User.all.non_admin
    end


end