require "rails_helper"

RSpec.describe 'landing page' do

  it 'displays hazards' do
    visit root_path

    expect(page).to have_content('Cheyenne, Wyoming')
    expect(page).to have_content('Parking Lot')
    expect(page).to have_content("Big 'ol pothole")
    expect(page).to_not have_content('North Pole, Alaska')
  end

  it 'can create a user with Oauth' do
    visit root_path

    epect(page).to have_button('Log in With Google')

    click_button('Log in With Google')

    expect(current_path).to eq(dashboard_path)
    #code that queries the db to make sure the number of users went up by 1
  end

  it 'can log in a user with Oauth' do
    #user = user.create!(email: valid_email_placeholder)
    visit root_path

    epect(page).to have_button('Log in With Google')

    click_button('Log in With Google')

    expect(current_path).to eq(dashboard_path)
    #code that queries the db to make sure the number of users did not change
  end

  it 'redirects to dashboard if user is logged in' do
    #code that logs in the user
    visit root_path

    expect(current_path).to eq(dashboard_path)
  end
end
