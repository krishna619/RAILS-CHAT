class UsersController < ApplicationController
	def new
		@user=User.new
	end
	 def create
	    @user = User.new(user_params)
	    if @user.save
	      session[:user_id] = @user.id
	      redirect_to root_path
	      flash[:success] = "Welcome to MessageMe, #{@user.username}!"
	    else
	      flash[:error] = @user.errors.full_messages.to_sentence
	      redirect_to login_path
	    end
  end
	private
	def user_params
		params.require(:user).permit(:username, :password)
		
	end
end