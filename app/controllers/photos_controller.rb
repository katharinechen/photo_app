class PhotosController < ApplicationController
  before_filter :authorize, only: [:edit, :update]
  def new
  end
end
