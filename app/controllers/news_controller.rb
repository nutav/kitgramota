class NewsController < ApplicationController
	# load_and_authorize_resource class: 'New'

	def index
		@news = New.all
	end
	
	def new 
		@new = New.new
	end

	def create
		@new = New.find(params[:id])
	end

	def edit
		@new = New.find(params[:id])
	end

	def update 
		@new = New.find(params[:id])
	end

	def destroy 
		@new = New.find(params[:id])
	end

	def resource_params
		params.require(:new).permit(:name, :description, :status)
	end
end