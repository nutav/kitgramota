class AlbumsController < ApplicationController
  # load_and_authorize_resource class: 'New'

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create(resource_params)
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.update(resource_params)
  end

  def destroy
    @album = Album.find(params[:id])
  end

  def resource_params
    params.require(:album).permit(:name, :description, :created_at, :updated_at)
  end
end