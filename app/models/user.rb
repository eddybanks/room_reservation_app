   class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :created_rooms, as: :creator, class_name: "Room"
  has_many :reservations, as: :client
  has_many :reserved_rooms, through: :reservations, source: :reserved_rooms, source_type: "rooms"

end
