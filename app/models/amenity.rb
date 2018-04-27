class Amenity < ApplicationRecord
  has_many :hosts, through: :host_amenities
  has_many :host_amenities
end
