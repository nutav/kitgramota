class PricesController < ApplicationController
  # load_and_authorize_resource class: 'New'

  def index
    @prices = Price.all
  end

  def new
    @price = Price.new
  end

  def create
    @price = Price.create(resource_params)
  end

  def edit
    @price = Price.find(params[:id])
  end

  def update
    @price = Price.update(resource_params)
  end

  def destroy
    @price = Price.find(params[:id])
  end

  def resource_params
    params.require(:price).permit(:sum, :saturday, :individual, :education_level_id, :education_type_id)
  end
end