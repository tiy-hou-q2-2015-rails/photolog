class PhotosController < ApplicationController
  def index
    @photos = Photo.all.order("created_at desc")
  end

  def open_modal
    @photo = Photo.new
  end

  def create
    @photo = Photo.new params.require(:photo).permit(:picture)
    @photo.save
    @photos = Photo.all.order("created_at desc")
  end
end
