class UsersController < ApplicationController
    def new
      @user = User.new
    end

    def create
      user = User.create(user_params)
      if user.save 
        session[:user_id] = user.id 
        redirect_to '/homepage'
      else
        redirect_to '/users/new'
      end
    end

    def homepage
        @user = User.find_by(name: params[:name])
    end
    
    private
    
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
