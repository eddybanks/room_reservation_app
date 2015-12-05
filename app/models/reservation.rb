class Reservation < ActiveRecord::Base

  belongs_to :clients, polymorphic: true
  belongs_to :reserved_rooms, polymorphic: true

  validates :room_id,      presence: true
  validates :start_datetime, :end_datetime,     overlap: { scope: "room_id" }

end
