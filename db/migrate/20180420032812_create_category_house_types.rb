class CreateCategoryHouseTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :category_house_types do |t|
      t.references    :category, foreign_key: true
      t.references    :house_type, foreign_key: true
    end
  end
end
