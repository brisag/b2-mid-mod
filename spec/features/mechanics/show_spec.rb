require 'rails_helper'

RSpec.describe 'As a visitor' do
    before :each do
      @mechanic_1 = Mechanic.create!(name: "Anne", years: 6)
      @mechanic_2 = Mechanic.create!(name: "Bob", years: 4)
      @mechanic_3 = Mechanic.create!(name: "Carl", years: 8)

      @ride1 = Ride.create!(title: "Tower of Doom", rating: 9, open: true)
      @ride2 = Ride.create!(title: "Roller Coaster", rating: 7, open: true)
      @ride3 = Ride.create!(title: "Batman", rating: 10, open: false)
      @ride4 = Ride.create!(title: "Teacups", rating: 4, open: false)
      # @ride5 = Ride.create!(title: "Kiddy ride", rating: 2, open: true)

      MechanicRide.create!(mechanic: @mechanic_1, ride: @ride1)
      MechanicRide.create!(mechanic: @mechanic_1, ride: @ride2)
      MechanicRide.create!(mechanic: @mechanic_1, ride: @ride3)
      MechanicRide.create!(mechanic: @mechanic_2, ride: @ride3)
      MechanicRide.create!(mechanic: @mechanic_3, ride: @ride3)
      MechanicRide.create!(mechanic: @mechanic_3, ride: @ride1)
      MechanicRide.create!(mechanic: @mechanic_3, ride: @ride4)
    end
