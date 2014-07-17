class PhotosController < ApplicationController
  # load_and_authorize_resource :album
  # load_and_authorize_resource through: :album

  def index
    @album = Album.find(params[:album_id])
    @photos = @album.photos
  end


  def destroy
    @album = Album.find(params[:album_id])
    @photo = @album.photos.find(params[:id])
    @photo.destroy
    redirect_to album_photos_path, notice: 'Фотография была удалена'
  end

end