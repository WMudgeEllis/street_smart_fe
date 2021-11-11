require "rails_helper"

RSpec.describe 'landing page' do

  it 'displays hazards', :vcr do
    visit root_path

    expect(page).to have_content('Cheyenne, Wyoming')
    expect(page).to have_content('Parking Lot')
    expect(page).to have_content("Big 'ol pothole")
  end

  xit 'can create a user with Oauth', :vcr do
    visit root_path

    epect(page).to have_button('Log in With Google')

    click_button('Log in With Google')

    #need to look at testing docs
    expect(current_path).to eq(dashboard_path)
    #code that queries the db to make sure the number of users went up by 1
  end

  xit 'can log in a user with Oauth', :vcr do
    #user = user.create!(email: valid_email_placeholder)
    visit root_path

    epect(page).to have_button('Log in With Google')

    click_button('Log in With Google')

    expect(current_path).to eq(dashboard_path)
    #code that queries the db to make sure the number of users did not change
  end

  it 'redirects to dashboard if user is logged in', :vcr do
    user = User.create(email: 'admin@admin.com')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    visit root_path

    expect(current_path).to eq(dashboard_path)
  end
end
