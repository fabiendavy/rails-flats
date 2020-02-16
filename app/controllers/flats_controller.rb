class FlatsController < ApplicationController
  before_action :set_flat, only: [:show]
  def index
    @flats = Flat.all
  end

  def show
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :city, :address, :number_of_guests, :flat_type, :price_per_night, :single_bed, :double_bed, :bedrooms, :bathrooms, :kitchen, :wifi, :television, :baby_bed, :park, :host_language)
  end
end
