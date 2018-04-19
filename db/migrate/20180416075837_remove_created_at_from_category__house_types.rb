class RemoveCreatedAtFromCategoryHouseTypes < ActiveRecord::Migration[5.0]
  def change
    remove_column :category_house_types, :Created_at, :DATETIME
    remove_column :category_house_types, :Updated_at, :DATETIME
  end
end
