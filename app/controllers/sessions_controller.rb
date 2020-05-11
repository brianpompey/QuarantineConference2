class SessionsController < ApplicationController

    def new
    end

    def create
        if auth_hash = request.env['omniauth.auth']
  #          raise auth_hash.inspect
            oauth_email = request.env["omniauth.auth"]["info"]["email"]
            if @user = User.find_by(:email => oauth_email)
                session[:user_id] = @user.id
            else
                @user = User.create(:email => oauth_email, :password => SecureRandom.hex, :name => request.env["omniauth.auth"]["info"]["name"])
                session[:user_id] = @user.id

                redirect_to new_user_user_interest_path(@user)
            end
        else
            @user = User.find_by_email(params[:email])
            if @user && @user.authenticate(params[:password])
                session[:user_id] = @user.id
                if @user.admin
                    redirect_to "/admin/conferences/admin_index.html.erb"
                else
                    redirect_to root_path
                end
            else
                flash.now[:alert] = "Email or password is invalid"
                render "new"
            end
        end
    end




    def destroy
        session.delete("user_id")
        redirect_to root_path
    end

 
    

end
