require "rails_helper"

RSpec.describe 'new hazard page' do

  it 'has requisite fields', :vcr do
    @user = User.create(email: 'test@test.com')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    visit new_hazard_path
    expect(page).to have_field(:title)
    expect(page).to have_field(:description)
    expect(page).to have_field(:latitude)
    expect(page).to have_field(:longitude)
    expect(page).to have_field(:category)
  end

  it 'creates a new hazard-happy path', :vcr do
    @user1 = User.create(email: 'admin@admin.com')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user1)
    visit new_hazard_path
    fill_in :title, with: 'Snake'
    fill_in :description, with: 'A danger noodle'
    fill_in :latitude, with: '41.1437'
    fill_in :longitude, with: '-104.7962'
    select 'Animate', :from => :category
    click_on 'Save'
    expect(page).to have_content('Hazard Recorded')
    expect(current_path).to eq(dashboard_path)
  end

  it 'has a sad path', :vcr do
    @user1 = User.create(email: 'admin@admin.com')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user1)
    visit new_hazard_path
    fill_in :title, with: 'Snake'
    fill_in :description, with: ' '
    fill_in :latitude, with: '41.1437'
    fill_in :longitude, with: '-104.7962'
    select 'Animate', :from => :category
    click_on 'Save'
    expect(page).to have_content('Hazard not created')
    expect(current_path).to eq(new_hazard_path)
  end
end
