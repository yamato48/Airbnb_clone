class CreateHostSafetyAmenities < ActiveRecord::Migration[5.0]
  def change
    create_table :host_safety_amenities do |t|
      t.references :host, null: false, foreign_key: true
      t.references :safety_amenity, null: false, foreign_key: true
      t.timestamps
    end
  end
end
