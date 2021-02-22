class Ride < ApplicationRecord
  has_many :mechanic_rides
  has_many :mechanics, through: :mechanic_rides

  def self.sort_by_most_thrills
    order(rating: :desc)
  end

end
