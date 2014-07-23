class TeachersController < ApplicationController
	load_resource class: 'Teacher'

	def index
	end
	
	def new 
	end

	def create
	end

	def edit
	end

	def update 
	end

	def destroy 
	end

	def resource_params
		params.require(:teacher).permit(:last_name, :first_name)
	end
end