class Education::TypesController < ApplicationController
  before_filter :authenticate_admin!
  # load_and_authorize_resource

  def index
    @types = Education::Type.all
  end

  def new
    @type = Education::Type.new
  end

  def create
    @type = Education::Type.create(resource_params)
  end

  def edit
    @type = Education::Type.find(params[:id])
  end

  def update
    @type = Education::Type.update(resource_params)
  end

  def destroy
    @type = Education::Type.find(params[:id])
  end

  def resource_params
    params.require(:education_type).permit(:name, :hours)
  end
end