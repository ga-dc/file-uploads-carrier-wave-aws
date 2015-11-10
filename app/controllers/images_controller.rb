class ImagesController < ApplicationController
  def index
    @image = Image.new
    @images = Image.all.reverse
  end
  def create
    @image = Image.create(image_params)
    redirect_to images_path
  end
  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_path
  end
  private
  def image_params
    params.require(:image).permit(:image_url)
  end
end
