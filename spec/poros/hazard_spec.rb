require 'rails_helper'

RSpec.describe Hazard do
  it 'has attributes', :vcr do
    ip = "127.0.0.1"
    hazards =  HazardFacade.all_hazards(ip)
    expect(hazards[0].id).to eq(1)
    expect(hazards[0].type).to eq("hazard")
    expect(hazards[0].title).to eq("Cheyenne, Wyoming")
    expect(hazards[0].description).to eq("Je suis comme je suis")
    expect(hazards[0].longitude).to eq("41.1400")
    expect(hazards[0].latitude).to eq("-104.8202")
    expect(hazards[0].category).to eq("inanimate")
    expect(hazards[0].user_id).to eq(1)
    expect(hazards[0].downvotes).to eq(1)
    expect(hazards[0].upvotes).to eq(10)
  end
end
