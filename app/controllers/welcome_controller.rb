class WelcomeController < ApplicationController

	def index
		@email = Email.new
	end

	def create
		@email = Email.new
		@email = Email.create(email: params[:email])

		if @email.save
	  		flash[:notice] = "Email was saved."
	  		redirect_to root_path 
		else
			flash.now[:alert] = "Oops, something happened on our end. Please try again."
	  		redirect_to root_path
  		end
	end 

end
