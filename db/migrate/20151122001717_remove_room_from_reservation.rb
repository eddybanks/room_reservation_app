class RemoveRoomFromReservation < ActiveRecord::Migration
  def change
    remove_reference :reservations, :room, index: true, foreign_key: true
  end
end
