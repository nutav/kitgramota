class AlbumsController < ApplicationController
  before_filter :authenticate_admin!, except: :gallery
  load_resource class: 'Album'

  def index
  end
  
  def gallery
    @albums = Album.all.with_photos
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
    @album.update(resource_params)
    if @album.save!
      redirect_to albums_path, notice: "Альбом #{@album.name} был успешно изменён"
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
      photos_attributes: [:id, :name, :picture, :'_destroy'])
  end
end