require "rails_helper"

RSpec.describe 'hazard show page' do

  #test may behave oddly depending on stubing
  it 'can display details of the hazard', :vcr do
    # Need code to authenticate user/log them in as user with id 1
    visit '/hazards/1'

    expect(page).to have_content("Title: Cheyenne, Wyoming")
    expect(page).to have_content("Description: Je suis comme je suis")
    expect(page).to have_content("Upvotes: 10")
    expect(page).to have_content("Downvotes: 1")
  end

  it 'can upvote the hazard', :vcr do
    # Need code to authenticate user/log them in as user with id 1
    visit '/hazards/1'

    expect(page).to have_content('Upvotes: 10')

    expect(page).to have_button('Upvote')

    click_on 'Upvote'

    expect(current_path).to eq('/hazards/1')
    expect(page).to have_content('Upvotes: 11')
  end

  it 'can downvote the hazard', :vcr do
    # Need code to authenticate user/log them in as user with id 1
    visit '/hazards/1'

    expect(page).to have_content('Downvotes: 1')

    expect(page).to have_button('Downvote')

    click_on 'Downvote'

    expect(current_path).to eq('/hazards/1')
    expect(page).to have_content('Downvotes: 2')
  end

  it 'cannot vote on the same hazard twice', :vcr do
    # Need code to authenticate user/log them in as user with id 1
    visit '/hazards/1'

    click_on 'Upvote'

    expect(current_path).to eq('/hazards/1')

    expect(page).to_not have_button('Upvote')
    expect(page).to_not have_button('Downvote')
  end

  xit 'does not see button to delete hazard when not the owner', :vcr do
    #code to log in as NOT user with id 1
    visit '/hazards/1'

    expect(page).to_not have_button('Delete Hazard')
  end

  it 'can delete hazard if owner of the hazard', :vcr do
    # Need code to authenticate user/log them in as user with id 1
    visit '/hazards/1'

    expect(page).to have_button('Delete Hazard')

    click_button('Delete Hazard')

    expect(current_path).to eq(dashboard_path)
    expect(page).to_not have_content('Cheyenne, Wyoming')
  end

end
