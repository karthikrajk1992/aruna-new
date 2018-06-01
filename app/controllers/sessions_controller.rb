class SessionsController < ApplicationController

	def new
		
	end
	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			flash[:succes] = "You have succesfully loged in"
			redirect_to '/admin/update'
		else
			flash.now[:danger] = "Invalid credential"
			render 'new'
		end
	end
	def destroy
		session[:user_id] = nil
		flash[:success] = "you have logged out successfully"
		redirect_to admin_console_path
	end
end