require "rails_helper"

RSpec.describe 'hazard show page' do

  #tests may behave oddly depending on stubing

  before :each do
    @user1 = User.create!(email: 'admin@admin.com')
    @user2 = User.create!(email: 'nice@sweet.com')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user1)
  end

  it 'can display details of the hazard', :vcr do
    visit '/hazards/1'

    expect(page).to have_content("Title: Cheyenne, Wyoming")
    expect(page).to have_content("Description: Je suis comme je suis")
    expect(page).to have_content("Upvotes: 10")
    expect(page).to have_content("Downvotes: 1")
  end

  it 'can upvote the hazard', :vcr do
    visit '/hazards/1'

    expect(page).to have_content('Upvotes: 10')

    expect(page).to have_button('Upvote')

    click_on 'Upvote'

    expect(current_path).to eq('/hazards/1')
    expect(page).to have_content('Upvotes: 11')
  end

  it 'can downvote the hazard', :vcr do
    visit '/hazards/2'

    expect(page).to have_content('Downvotes: 1')

    expect(page).to have_button('Downvote')

    click_on 'Downvote'

    expect(current_path).to eq('/hazards/2')
    expect(page).to have_content('Downvotes: 2')
  end

  xit 'cannot vote on the same hazard twice', :vcr do
    # Need code to authenticate user/log them in as user with id 1
    visit '/hazards/3'

    click_on 'Upvote'

    expect(current_path).to eq('/hazards/3')

    expect(page).to_not have_button('Upvote')
    expect(page).to_not have_button('Downvote')
  end

  it 'does not see button to delete hazard when not the owner', :vcr do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user2)
    visit '/hazards/1'

    expect(page).to_not have_button('Delete Hazard')
  end

  it 'can delete hazard if owner of the hazard', :vcr do
    visit '/hazards/1'

    expect(page).to have_button('Delete Hazard')

    click_button('Delete Hazard')

    expect(current_path).to eq(dashboard_path)
    expect(page).to_not have_content('Cheyenne, Wyoming')
  end

end
