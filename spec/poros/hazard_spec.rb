require 'rails_helper'

RSpec.describe Hazard do
  it 'has attributes' do
    hazards =  HazardFacade.all_hazards
    expect(hazards[0].id).to eq(1)
    expect(hazards[0].type).to eq("hazard")
    expect(hazards[0].title).to eq("Cheyenne, Wyoming")
    expect(hazards[0].description).to eq("Je suis comme je suis")
    expect(hazards[0].longitude).to eq("41.1400")
    expect(hazards[0].latitude).to eq("-104.8202")
    expect(hazards[0].category).to eq("animate")
    expect(hazards[0].user_id).to eq(1)
  end
end
