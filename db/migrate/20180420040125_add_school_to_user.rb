class AddSchoolToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :school, :string
    add_column :users, :workplace, :string
  end
end
