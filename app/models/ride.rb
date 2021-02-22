class Ride < ApplicationRecord
  has_many :mechanic_rides
  has_many :mechanics, though: :mechanic_rides
end
