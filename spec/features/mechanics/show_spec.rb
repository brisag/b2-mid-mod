require 'rails_helper'

RSpec.describe 'As a visitor' do
    before :each do
      @mechanic_1 = Mechanic.create!(name: "Anne", years: 6)
      @mechanic_2 = Mechanic.create!(name: "Bob", years: 4)
      @mechanic_3 = Mechanic.create!(name: "Carl", years: 8)

      @ride1 = Ride.create!(name: "Tower of Doom", rating: 9, open: true)
      @ride2 = Ride.create!(name: "Roller Coaster", rating: 7, open: true)
      @ride3 = Ride.create!(name: "Batman", rating: 10, open: false)
      @ride4 = Ride.create!(name: "Teacups", rating: 4, open: false)
      # @ride5 = Ride.create!(title: "Kiddy ride", rating: 2, open: true)

      MechanicRide.create!(mechanic: @mechanic_1, ride: @ride1)
      MechanicRide.create!(mechanic: @mechanic_1, ride: @ride2)
      MechanicRide.create!(mechanic: @mechanic_1, ride: @ride3)
      MechanicRide.create!(mechanic: @mechanic_2, ride: @ride3)
      MechanicRide.create!(mechanic: @mechanic_3, ride: @ride3)
      MechanicRide.create!(mechanic: @mechanic_3, ride: @ride1)
      MechanicRide.create!(mechanic: @mechanic_3, ride: @ride4)
    end

    describe "When I go to a mechanics show page" do
    it "I see their name, years of experience, and names of all rides they’re working on" do

      visit "/mechanics/#{@mechanic_1.id}"
      save_and_open_page

      expect(page).to have_content("#{@mechanic_1.name}")
      expect(page).to have_content("#{@mechanic_1.years}")
      expect(page).to have_content("#{@ride1.name}")
      expect(page).to have_content("#{@ride2.name}")
      expect(page).to have_content("#{@ride3.name}")
    end
  end
end
