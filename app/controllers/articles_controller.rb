class ArticlesController < ApplicationController
	load_resource

	def index
	end
	
	def new 
	end

	def show
	end	

	def create
		@article = Article.create(resource_params)
		if @article.save!
			redirect_to articles_path
		else
			render action: :new
		end	
	end

	def edit	
	end

	def update 
		@article = @article.update(resource_params)
		if @article.save!
			redirect_to articles_path
		else
			render action: :edit
		end
	end

	def destroy 
		@article.destroy!
		redirect_to articles_path
	end

	private
	def resource_params
		params.require(:article).permit(:name, :description, :status, :created_at, :updated_at)
	end
end