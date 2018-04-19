class HouseType < ApplicationRecord
  has_many :categories, through: :category_house_types
  has_many :category_house_types
  self.inheritance_column = :_type_disabled
end
