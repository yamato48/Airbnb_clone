class Amenity < ApplicationRecord
  has_many :house, through: :houses_amenities
  has_many :houses_amenities
end
