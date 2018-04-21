class AddAmenityToHosts < ActiveRecord::Migration[5.0]
  def change
    add_column :hosts, :amenity, :integer
  end
end
