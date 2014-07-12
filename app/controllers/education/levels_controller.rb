class Education::LevelsController < ApplicationController
  # load_and_authorize_resource class: 'New'

  def index
    @levels = Education::Level.all
  end

  def new
    @level = Education::Level.new
  end

  def create
    @level = Education::Level.create(resource_params)
  end

  def show

  end

  def edit
    @level = Education::Level.find(params[:id])
  end

  def update
    @level = Education::Level.update(params[:id])
  end

  def destroy
    @level = Education::Level.find(params[:id])
  end

  def resource_params
    params.require(:education_level).permit(:name, :description)
  end
end