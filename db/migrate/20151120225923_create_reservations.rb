class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.timestamps null: false
    end
  end
end
