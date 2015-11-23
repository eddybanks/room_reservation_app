class Reservation < ActiveRecord::Base

  belongs_to :clients, polymorphic: true
  belongs_to :reserved_rooms, polymorphic: true

  validates :room_id,      presence: true

end
