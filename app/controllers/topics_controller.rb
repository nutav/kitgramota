class TopicsController < ApplicationController
	load_resource

	def index
	end

	def news
		@topics = Topic.publications
	end
	
	def new 
	end

	def show
		@topic = Topic.find(params[:id])
	end	

	def create
		@topic = Topic.create(resource_params)
		if @topic.save!
			redirect_to topics_path
		else
			render action: :new
		end	
	end

	def edit
	end

	def update 
		@topic = @topic.update(resource_params)
		if @topic.save!
			redirect_to topics_path
		else
			render action: :edit
		end
	end

	def destroy 
		@new = Topic.find(params[:id])
	end

	private
	def resource_params
		params.require(:topic).permit(:name, :description, :status, :created_at, :updated_at)
	end
end