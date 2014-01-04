require 'spec_helper'

# I must specify the color, year, mileage of the car.
# Only years from 1980 and above can be specified.
# I can optionally specify a description of the car.
# If I enter all of the required information in the required format, the car is recorded.
# If I do not specify all of the required information in the required formats, the car is not recorded and I am presented with errors.
# Upon successfully creating a car, I am redirected so that I can create another car.

describe 'a user adds new car record' do

  context "with_valid_attributes" do
    it 'creates a new car record' do
      color = 'blue'
      year = 2008
      mileage = 28000
      description = 'Sedan'

    visit new_car_path
    fill_in "Color", with: color
    fill_in "Year", with: year
    fill_in "Mileage", with: mileage
    fill_in "Description", with: description
    click_on "Car"

    expect(page).to have_content color
    expect(page).to have_content year
    expect(page).to have_content mileage
    expect(page).to have_content description
  end
end

  context "with invalid attributes" do
    it 'sees applicable errors' do
      visit new_car_path
      click_on "Car"
      expect(page).to have_content "can't be blank"
      expect(page).to have_content "Must be after 1980."
      expect(page).to have_content "can't be blank"
    end
  end

end
