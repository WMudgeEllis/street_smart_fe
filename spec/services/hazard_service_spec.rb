require 'rails_helper'

RSpec.describe HazardService do
  it '#get_hazards_index' do
    hazards = HazardService.get_hazards_index
    expect(hazards).to be_a(Array)
    expect(hazards.size).to eq(3)
    hazard_data = hazards.first
    expect(hazard_data).to have_key(:id)
    expect(hazard_data).to have_key(:type)
    expect(hazard_data).to have_key(:attributes)
    expect(hazard_data[:attributes]).to have_key(:title)
    expect(hazard_data[:attributes]).to have_key(:description)
    expect(hazard_data[:attributes]).to have_key(:longitude)
    expect(hazard_data[:attributes]).to have_key(:latitude)
    expect(hazard_data[:attributes]).to have_key(:category)
    expect(hazard_data[:attributes]).to have_key(:user_id)
    expect(hazard_data[:attributes]).to have_key(:vote_data)
    expect(hazard_data[:attributes][:vote_data]).to have_key(:upvote)
    expect(hazard_data[:attributes][:vote_data]).to have_key(:downvote)
  end
end
