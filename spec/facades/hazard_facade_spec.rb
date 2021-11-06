require 'rails_helper'

RSpec.describe HazardFacade do
  it 'returns array of hazards' do
    hazards =  HazardFacade.all_hazards
    expect(hazards).to be_an(Array)
    expect(hazards.count).to eq(3)
    expect(hazards.first).to be_a(Hazard)
  end
end
