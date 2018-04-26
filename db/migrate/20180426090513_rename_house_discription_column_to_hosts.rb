class RenameHouseDiscriptionColumnToHosts < ActiveRecord::Migration[5.0]
  def change
    rename_column :hosts, :house_discription, :house_description
  end
end
