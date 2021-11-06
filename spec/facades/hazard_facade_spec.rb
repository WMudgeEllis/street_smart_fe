require 'rails_helper'

RSpec.describe HazardFacade do
  it 'returns array of hazards', :vcr do
    ip = "127.0.0.1"
    hazards =  HazardFacade.all_hazards(ip)
    expect(hazards).to be_an(Array)
    expect(hazards.count).to eq(4)
    expect(hazards.first).to be_a(Hazard)
  end
end
