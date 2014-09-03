class PhotosController < ApplicationController

  def new
    @user = current_user
    @photo = Photo.new
  end

  def create
    @photo = current_user.photos.new(user_params)
    if @photo.save
      flash[:notice] = "#our photo has been saved."
      redirect_to root_url
    else
      flash[:notice] = "Failed."
      render "new"
    end
  end

private

  def user_params
    params.require(:photo).permit(:avatar, :user_id)
  end


end
