require 'rails_helper'

RSpec.describe Ride, type: :model do
  describe 'relationships' do
    it {should have_many :mechanics}
    it {should have_many :mechanic_rides}
  end

  describe 'class methods' do
  before :each do
    @mechanic_1 = Mechanic.create!(name: "Anne", years: 6)
    @mechanic_2 = Mechanic.create!(name: "Bob", years: 4)
    @mechanic_3 = Mechanic.create!(name: "Carl", years: 8)

    @ride1 = Ride.create!(name: "Tower of Doom", rating: 9, open: true)
    @ride2 = Ride.create!(name: "Roller Coaster", rating: 7, open: true)
    @ride3 = Ride.create!(name: "Batman", rating: 10, open: false)
    @ride4 = Ride.create!(name: "Teacups", rating: 4, open: false)
    @ride5 = Ride.create!(name: "Kiddy ride", rating: 2, open: true)

    MechanicRide.create!(mechanic: @mechanic_1, ride: @ride1)
    MechanicRide.create!(mechanic: @mechanic_1, ride: @ride2)
    MechanicRide.create!(mechanic: @mechanic_1, ride: @ride3)
    MechanicRide.create!(mechanic: @mechanic_2, ride: @ride3)
    MechanicRide.create!(mechanic: @mechanic_3, ride: @ride3)
    MechanicRide.create!(mechanic: @mechanic_3, ride: @ride1)
    MechanicRide.create!(mechanic: @mechanic_3, ride: @ride4)
  end

  it '::sort_by_most_thrills' do
    expect(Ride.sort_by_most_thrills).to eq([@ride3, @ride1, @ride2, @ride4, @ride5])
    end 
  end
end
