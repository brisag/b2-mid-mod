require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'when i visit the mechanics index page' do
    before :each do
      @mechanic_1 = Mechanic.create!(name: "Anne", years: 6)
      @mechanic_2 = Mechanic.create!(name: "Bob", years: 4)
      @mechanic_3 = Mechanic.create!(name: "Carl", years: 8)
    end

    it 'I see a header saying “All Mechanics”' do
      visit '/mechanics'
        expect(page).to have_content("All Mechanics")
        save_and_open_page

    it 'list of all mechanics anf its attributes' do
      expect(page).to have_content("#{@mechanic_1.name}")
      expect(page).to have_content("#{@mechanic_1.experience} years of experience")
      expect(page).to have_content("#{@mechanic_2.name}")
      expect(page).to have_content("#{@mechanic_2.experience} years of experience")
      expect(page).to have_content("#{@mechanic_3.name}")
      expect(page).to have_content("#{@mechanic_3.experience} years of experience")
      end
    end
  end
end
