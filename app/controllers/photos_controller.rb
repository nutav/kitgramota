class PhotosController < ApplicationController
  before_filter :authenticate_admin!, except: :index
  load_and_authorize_resource :album, class: 'Album', except: :index
  load_and_authorize_resource through: :album, class: 'Photo', except: :index
  load_resource :album, class: 'Album', only: :index
  load_resource through: :album, class: 'Photo', only: :index

  def index
    # @album = Album.find(params[:album_id])
    # @photos = @album.photos
  end


  def destroy
    # @album = Album.find(params[:album_id])
    # @photo = @album.photos.find(params[:id])
    @photo.destroy
    redirect_to album_photos_path, notice: 'Фотография была удалена'
  end

end