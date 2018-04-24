class SafetyAmenity < ApplicationRecord
  has_many :hosts, through: :host_safety_amenities
  has_many :host_safety_amenities
end
