class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :users, null: false, foreign_key: true
      t.references :rooms, null: false, foreign_key: true
      t.timestamps
    end
  end
end
