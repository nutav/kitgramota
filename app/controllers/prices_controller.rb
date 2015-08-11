class PricesController < ApplicationController
  before_filter :authenticate_admin!, except: :actual
  load_and_authorize_resource class: 'Price', except: :actual
  load_resource class: 'Price', only: :actual

  def index
    @prices = Price.all.order(:id)
  end

  def actual
    @prices = Price.all.order(:id)
  end

  def new
    @price = Price.new
  end

  def create
    @price = Price.create(resource_params)
    
    if @price.save!
      redirect_to all_prices_path
    else
      render action: :new 
    end 
  end

  def edit
    @price = Price.find(params[:id])
  end

  def update
    @price.update(resource_params)
    
    if @price.save!
      redirect_to all_prices_path
    else
      render action: :new 
    end 
  end

  def destroy
    @price = Price.find(params[:id])
    @price.destroy
  end

  def resource_params
    params.require(:price).permit(:sum, :saturday, :individual, :education_level_id, :education_type_id)
  end
end