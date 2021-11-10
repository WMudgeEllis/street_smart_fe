require 'rails_helper'

RSpec.describe WalkScoreService do
  it '#get_walk_score', :vcr do
    ip = "47.36.122.136"
    walkscore = WalkScoreService.get_walk_score(ip)
    expect(walkscore).to have_key(:data)
    expect(walkscore[:data]).to have_key(:attributes)
    expect(walkscore[:data][:attributes]).to have_key(:score)
    expect(walkscore[:data][:attributes]).to have_key(:description)
  end
end
