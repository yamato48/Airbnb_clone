class Host < ApplicationRecord
  has_many :categories
  belongs_to :user
  has_many :amenities, through: :host_amenities
  has_many :safety_amenities, through: :host_safety_amenities

  enum size_of_building: [ :size_of_building_2_5, :size_of_building_6_10, :size_of_building_11_20, :size_of_building_21_30, :size_of_building_31_40, :size_of_building_41_50, :size_of_building_50_puls ]
  enum room_type: [ :entire_house, :private_room, :share_room ]
  enum is_this_room_using_guest_only: [ :bedroom_count_1, :bedroom_count_2, :bedroom_count_3, :bedroom_count_4, :bedroom_count_5, :bedroom_count_6, :bedroom_count_7, :bedroom_count_8, :bedroom_count_9, :bedroom_count_10, ]
end
