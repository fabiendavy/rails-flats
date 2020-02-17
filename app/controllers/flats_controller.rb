class FlatsController < ApplicationController
  before_action :set_flat, only: [:show]
  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end


  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :city, :address, :number_of_guests, :flat_type, :price_per_night, :single_bed, :double_bed, :bedrooms, :bathrooms, :kitchen, :wifi, :television, :baby_bed, :park, host_languages: [], images: [])
  end
end
