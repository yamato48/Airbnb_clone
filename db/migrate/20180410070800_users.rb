class Users < ActiveRecord::Migration[5.0]
  def change
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :sex, null: false
      t.string  :birth, null: false
      t.string  :e_mail, null: false
      t.string  :phone_number, null: false
      t.string  :language, null: false
      t.string  :currency, null: false
      t.string  :identification, null: false
      t.string  :avatar, null:false
  end
end
