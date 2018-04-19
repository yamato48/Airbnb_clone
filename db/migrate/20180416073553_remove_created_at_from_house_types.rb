class RemoveCreatedAtFromHouseTypes < ActiveRecord::Migration[5.0]
  def change
    remove_column :house_types, :Created_at, :DATETIME
    remove_column :house_types, :Updated_at, :DATETIME
  end
end
