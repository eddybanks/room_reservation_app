class Room < ActiveRecord::Base

  belongs_to :building
  belongs_to :creator, polymorphic: true
  has_many :reservations
  has_many :clients, through: :reservations, source: :clients, source_type: "User"

end
