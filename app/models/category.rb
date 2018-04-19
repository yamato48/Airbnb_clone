class Category < ApplicationRecord
  belongs_to :host
  has_many :house_types, through: :category_house_types
  has_many :category_house_types
end
