class AddRoomGuestsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :room_guests do |t|
      t.references :room, foreign_key: true
      t.references :guest, foreign_key: true

      t.timestamps
    end
  end
end
