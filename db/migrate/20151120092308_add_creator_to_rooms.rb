class AddCreatorToRooms < ActiveRecord::Migration
  def change
    add_reference :rooms, :creator, polymorphic: true, index: true
  end
end
