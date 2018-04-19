class CategoryHouseType < ApplicationRecord
  belongs_to :category
  belongs_to :house_type
end
