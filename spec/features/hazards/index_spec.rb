require "rails_helper"

RSpec.describe 'User dashboard page' do

  before :each do
    @user = User.create(email: 'admin@admin.com')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
  end

  it 'displays list of hazards', :vcr do
    visit dashboard_path

    expect(page).to have_content('Cheyenne, Wyoming')
    expect(page).to have_content('Parking Lot')
    expect(page).to have_content("Big 'ol pothole")
    expect(page).to_not have_content('North Pole, Alaska')
  end

  it 'hazard title links to hazard show page', :vcr do
    visit dashboard_path

    expect(page).to have_link('Cheyenne, Wyoming')

    click_link('Cheyenne, Wyoming')

    expect(current_path).to eq('/hazards/1')
  end

  it 'links to new hazard page', :vcr do
    visit dashboard_path

    expect(page).to have_button('Report a Hazard')

    click_button('Report a Hazard')

    expect(current_path).to eq(new_hazard_path)
  end

  it 'redirects to root if user is not logged in', :vcr do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(nil)

    visit dashboard_path

    expect(current_path).to eq(root_path)
  end
end
