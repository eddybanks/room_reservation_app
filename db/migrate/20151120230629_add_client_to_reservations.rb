class AddClientToReservations < ActiveRecord::Migration
  def change
    add_reference :reservations, :client, polymorphic: true, index: true
  end
end
