class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string    :name,            null: false
      t.integer   :capacity,        null: false, default: 10

      t.timestamps null: false
    end

    add_index :rooms, :name
  end
end
