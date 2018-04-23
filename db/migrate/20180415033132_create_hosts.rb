class CreateHosts < ActiveRecord::Migration[5.0]
  def change
    create_table :hosts do |t|
      t.integer       :category
      t.integer       :house_type
      t.integer       :room_type
      t.integer       :size_of_building
      t.integer       :is_this_room_using_guest_only
      t.integer       :capacity
      t.integer       :num_bedroom
      t.integer       :num_bed
      t.string        :country
      t.string        :postal_code
      t.string        :state
      t.string        :city
      t.string        :address_line_1
      t.string        :address_line_2
      t.float         :num_of_bath
      t.string        :house_discription
      t.string        :house_name
      t.string        :have_you_experienced_lending_a_room
      t.string        :how_often_do_you_want_to_stay
      t.integer       :reservation_limit
      t.integer       :reception_limit
      t.integer       :from_night
      t.integer       :to_night
      t.integer       :charge_setting_type
      t.integer       :min_charge
      t.integer       :max_charge
      t.integer       :basic_charge
      t.string        :first_time_20percent_discount
      t.integer       :discount_rate
      t.integer       :weekly_discount_rate
      t.integer       :monthly_discount_rate
      t.string        :profile_image
      t.timestamps
    end
  end
end
