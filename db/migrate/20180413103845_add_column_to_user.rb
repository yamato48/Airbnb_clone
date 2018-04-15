class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :birth_day, :date, null: false
    add_column :users, :sex, :integer
    add_column :users, :phone_number, :string
    add_column :users, :language, :integer
    add_column :users, :currency, :integer
    add_column :users, :identification, :string
    add_column :users, :address, :string
    add_column :users, :profile, :string
  end
end
