class PhotosController < ApplicationController
  before_action :set_family, only: [:index, :show]
  before_action :set_photo, only: [:show, :update, :destroy]

  def index
    @photos = @family.sorted_photos
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params(:title, :description, :attachment))
    @photo.family_id = params[:id]
    @photo.save
    if @photo.valid?
      redirect_to photos_path
    else
      flash[:messages] = @photo.errors.full_messages
      redirect_to photos_path
    end
  end

  def show
  
  end

  def update
    @photo.update(photo_params(:title, :description))
    redirect_to photo_path(@photo)
  end

  def destroy
    @photo.destroy
    redirect_to photos_path
  end

  private

  def set_family
    @family = Family.find(current_user.family.id)
  end

  def photo_params(*args)
    params.require(:photo).permit(*args)
  end

  def set_photo
    @photo = Photo.find(params[:photo_id])
  end


end
