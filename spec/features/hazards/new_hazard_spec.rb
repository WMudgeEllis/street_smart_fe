require "rails_helper"

RSpec.describe 'new hazard page' do

  before :each do
    @user1 = User.create!(email: 'admin@admin.com')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user1)
    visit new_hazard_path
  end

  it 'has requisite fields', :vcr do
    expect(page).to have_field('title')
    expect(page).to have_field('description')
    expect(page).to have_field('longitude')
    expect(page).to have_field('latitude')
  end

  it 'can create a new hazard', :vcr do
    fill_in 'title', with: 'Capitol Building'
    fill_in 'description', with: 'There is a hidden basement, beware'
    fill_in 'latitude', with: '39.7392'
    fill_in 'longitude', with: '-104.9847'
    select 'Inanimate', from: 'category'
    click_on 'commit'
    expect(current_path).to eq(dashboard_path)
    expect(page).to have_content('Capitol Building')
  end
end
