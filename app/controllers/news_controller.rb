class NewsController < ApplicationController
	load_resource class: 'New'

	def index
	end
	
	def new 
	end

	def show
	end	

	def create
		@new = New.create(resource_params)
	end

	def edit
	end

	def update 
		@new = New.update(resource_params)
	end

	def destroy 
		@new = New.find(params[:id])
	end

	def resource_params
		params.require(:new).permit(:name, :description, :status)
	end
end