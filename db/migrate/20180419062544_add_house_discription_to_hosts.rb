class AddHouseDiscriptionToHosts < ActiveRecord::Migration[5.0]
  def change
    add_column :house_types, :house_discription, :text
  end
end
