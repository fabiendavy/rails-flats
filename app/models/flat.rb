class Flat < ApplicationRecord
  # associations
  has_many :flat_images, dependent: :destroy

  # validations
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :number_of_guests, presence: true
  validates :flat_type, presence: true
  validates :price_per_night, presence: true
  validates :single_bed, presence: true
  validates :double_bed, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
end
