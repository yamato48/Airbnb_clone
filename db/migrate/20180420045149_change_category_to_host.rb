class ChangeCategoryToHost < ActiveRecord::Migration[5.0]
  def up
    change_column :hosts, :category, :string
    change_column :hosts, :house_type, :string
  end

  # 変更前の状態
  def down
    change_column :hosts, :category, :integer
    change_column :hosts, :house_type, :integer
  end
end
