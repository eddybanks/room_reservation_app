class AddRoomToReservation < ActiveRecord::Migration
  def change
    add_reference :reservations, :room, polymorphic: true, index: true
  end
end
