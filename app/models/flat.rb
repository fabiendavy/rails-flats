class Flat < ApplicationRecord
  # validations
  validates :number_of_guests, presence: true
  validates :flat_type, presence: true
  validates :price_per_night, presence: true
  validates :single_bed, presence: true
  validates :double_bed, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
end
