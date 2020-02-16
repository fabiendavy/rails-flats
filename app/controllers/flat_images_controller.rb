class FlatImagesController < ApplicationController
  def new
    @flat_image = FlatImage.new
  end

  def create
    
  end

  private

  def flat_image_params
    params.require(:flat_image).permit(:url)
  end
end
