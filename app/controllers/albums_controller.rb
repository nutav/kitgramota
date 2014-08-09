class AlbumsController < ApplicationController
  # before_filter :authenticate_admin!, except: :index
  # load_and_authorize_resource class: 'New'

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create(resource_params)
    if @album.save!
      redirect_to albums_path, notice: "Альбом #{@album.name} был успешно создан"
    else
      render action: :new 
    end  
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id]).update_attributes(resource_params)
    if @album.save!
      redirect_to album_photos_path, notice: "Альбом #{@album.name} был успешно изменён"
    else
      render action: :edit
    end 
  end

  def destroy
    @album = Album.find(params[:id])
    name = @album.name
    @album.destroy
    redirect_to albums_path, notice: "Альбом #{name} был удалён"
  end

  def resource_params
    params.require(:album).permit(:name, :description, :created_at, :updated_at,
      photos_attributes: [:id, :name, :picture])
  end
end