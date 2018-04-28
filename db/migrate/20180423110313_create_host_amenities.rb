class CreateHostAmenities < ActiveRecord::Migration[5.0]
  def change
    create_table :host_amenities do |t|
      t.references :host, null: false, foreign_key: true
      t.references :amenity, null: false, foreign_key: true
      t.timestamps
    end
  end
end
