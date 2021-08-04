class UserController < ApplicationController

    def create
        @user = User.create(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "Welcome #{@user.username}, you have successfully signed up"
            redirect_to chatroom_path
        else
            render 'new'
        end
    end


    private

    def user_params
        params.require(:user).permit(:username,:email,:password)        
    end
end