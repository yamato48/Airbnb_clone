class CreateHouseTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :house_types do |t|
      t.string      :type, null: false, unique: true
      t.timestamps
    end
  end
end
