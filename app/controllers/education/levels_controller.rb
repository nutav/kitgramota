class Education::LevelsController < ApplicationController
  before_filter :authenticate_admin!, except: [:courses, :show]
  load_resource class: 'Education::Level'

  def index
  end

  def courses
    @levels = Education::Level.all.order(:id)
  end

  def new
  end

  def create
    @level = Education::Level.create(resource_params)
		if @level.save!
			redirect_to levels_path
		else
			render action: :new
		end	
  end

  def show

  end

  def edit
    @level = Education::Level.find(params[:id])
  end

  def update
    @level = Education::Level.find(params[:id])
    @level.update(resource_params)
    if @level.save
      redirect_to education_levels_path
    else
      render action: :edit
    end
  end

  def destroy
    @level = Education::Level.find(params[:id])
		@level .destroy!
		redirect_to education_levels_path
  end

  def resource_params
    params.require(:education_level).permit(:name, :description)
  end
end