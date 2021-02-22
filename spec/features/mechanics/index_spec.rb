require 'rails_helper'

RSpec.describe 'As a visitor' do
    before :each do
      @mechanic_1 = Mechanic.create!(name: "Anne", years: 6)
      @mechanic_2 = Mechanic.create!(name: "Bob", years: 4)
      @mechanic_3 = Mechanic.create!(name: "Carl", years: 8)
    end

    describe 'when i visit the mechanics index page' do
    it 'I see a header saying “All Mechanics”' do
      visit '/mechanics'
        expect(page).to have_content("All Mechanics")
        # save_and_open_page
      end

    it 'list of all mechanics and its attributes' do
      expect(page).to have_content("#{@mechanic_1.name}")
      expect(page).to have_content("#{@mechanic_1.years} years of experience")
      expect(page).to have_content("#{@mechanic_2.name}")
      expect(page).to have_content("#{@mechanic_2.years} years of experience")
      expect(page).to have_content("#{@mechanic_3.name}")
      expect(page).to have_content("#{@mechanic_3.years} years of experience")

    end
  end
end
