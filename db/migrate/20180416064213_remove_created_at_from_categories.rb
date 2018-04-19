class RemoveCreatedAtFromCategories < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :Created_at, :DATETIME
    remove_column :categories, :Updated_at, :DATETIME
  end
end
