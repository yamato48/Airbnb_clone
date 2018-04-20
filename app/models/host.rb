class Host < ApplicationRecord
  has_many :categories
  belongs_to :user

  enum size_of_building: [ :size_of_building_2_5, :size_of_building_6_10, :size_of_building_11_20, :size_of_building_21_30, :size_of_building_31_40, :size_of_building_41_50, :size_of_building_50_puls ]
  enum room_type: [ :entire_house, :private_room, :share_room ]
end

