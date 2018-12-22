class EmailsController < ApplicationController


	def index
	end

	def new
		@email = Email.new
	end

	def create
		address = params[:email]["email"]

		@email = Email.create(email: address)

		if @email.save
	  		flash[:notice] = "Email was saved."
	  		redirect_to root_path 
		else
			flash.now[:alert] = "Oops, something happened on our end. Please try again."
	  		redirect_to root_path
		end
	end 

end
