require 'rails_helper'

RSpec.describe 'dashboard index', :vcr do
  it 'shows all the hazards' do
    visit dashboard_path
    expect(page).to have_content("North Pole, Alaska")
  end
end
