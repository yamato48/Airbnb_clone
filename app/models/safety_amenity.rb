class SafetyAmenity < ApplicationRecord
  has_many :house, through: :houses__safety_amenities
  has_many :houses__safety_amenities
end
