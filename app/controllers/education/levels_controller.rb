class Education::LevelsController < ApplicationController
  before_filter :authenticate_admin!, except: [:courses, :show]
  load_resource class: 'Education::Level'

  def index
  end

  def courses
    @levels = Education::Level.all
  end

  def new
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