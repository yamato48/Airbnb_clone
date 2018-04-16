class Host < ApplicationRecord
  # アソシエーション部分
  belongs_to		:user

  enum category: [ :manshon, :jutaku, :subunit, :uniq_design, :b_and_b, :others ]
  enum house_type: [ :house, :bungalow, :log_house, :cottage, :dome_house, :farm_house, :old_private_house, :pension ]
  enum size_of_building: [ :size_of_building_2_5, :size_of_building_6_10, :size_of_building_11_20, :size_of_building_21_30, :size_of_building_31_40, :size_of_building_41_50, :size_of_building_50_puls ]
  enum room_type: [ :entire_house, :private_room, :share_room ]
end
