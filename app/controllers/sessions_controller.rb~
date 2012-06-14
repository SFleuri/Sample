class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			sign_in user
<<<<<<< HEAD
			redirect_to user
=======
			redirect_back_or user
>>>>>>> section-9
		else
			flash.now[:error] = 'Faild! Try Again!'
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end



end
