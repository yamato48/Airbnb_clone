class CreateSafetyAmenities < ActiveRecord::Migration[5.0]
  def change
    create_table :safety_amenities do |t|
      t.string :smoke_sensor, unique: true
      t.string :hochiki, unique: true
      t.string :first_aid_kit, unique: true
      t.string :emergency_info, unique: true
      t.string :fire_extinguisher, unique: true
      t.string :private_room, unique: true
      t.timestamps
    end
  end
end
