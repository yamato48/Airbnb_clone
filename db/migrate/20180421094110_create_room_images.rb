class CreateRoomImages < ActiveRecord::Migration[5.0]
  def change
    create_table :room_images do |t|
      t.string :content
      t.integer :status
      t.references :user, foreign_key: true
    end
  end
end
