class FlatImage < ApplicationRecord
  belongs_to :flat

  validates :url, presence: true
end
