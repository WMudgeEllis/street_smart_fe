require "rails_helper"

RSpec.describe 'User dashboard page' do

  #this test WILL expect far away hazards to not be included, which should be delt with by back end
  it 'displays list of hazards' do
    #need code to say user is logged in
    visit dashboard_path

    expect(page).to have_content('Cheyenne, Wyoming')
    expect(page).to have_content('Parking Lot')
    expect(page).to have_content("Big 'ol pothole")
    expect(page).to_not have_content('North Pole, Alaska')
  end

  it 'hazard title links to hazard show page' do
    #need code to say user is logged in
    visit dashboard_path

    expect(page).to have_link('Cheyenne, Wyoming')

    click_link('Cheyenne, Wyoming')
                              #this hard coding may fuck up depending on how the requests are stubbed FYI
    expect(current_path).to eq('/hazards/1')
  end

  it 'links to new hazard page' do
    #need code to say user is logged in
    visit dashboard_path

    expect(page).to have_button('Report a Hazard')

    click_button('Report a Hazard')

    expect(current_path).to eq(new_hazard_path)
  end

  it 'redirects to root if user is not logged in' do
    #no code to say user is logged in
    visit dashboard_path

    expect(current_path).to eq(root_path)
  end
end
