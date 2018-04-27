class CreateAmenities < ActiveRecord::Migration[5.0]
  def change
    create_table :amenities do |t|
      t.string :necessity, unique: true
      t.string :wifi, unique: true
      t.string :shampoo, unique: true
      t.string :closet, unique: true
      t.string :tv, unique: true
      t.string :air_con, unique: true
      t.string :breakfast, unique: true
      t.string :desk, unique: true
      t.string :heater, unique: true
      t.string :steam_iron, unique: true
      t.string :hair_dryer, unique: true
      t.string :pet, unique: true
      t.string :entrance, unique: true
      t.timestamps
    end
  end
end
