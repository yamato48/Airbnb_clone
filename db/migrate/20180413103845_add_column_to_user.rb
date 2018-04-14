class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :sex, :integer, null: false
    add_column :users, :birth_year, :date, null: false
    add_column :users, :birth_month, :date, null: false
    add_column :users, :birth_day, :date, null: false
    add_column :users, :phone_number, :string, null: false
    add_column :users, :language, :integer, null: false
    add_column :users, :currency, :integer, null: false
    add_column :users, :dentification, :string, null: false
  end
end
