require 'rails_helper'

RSpec.describe Client do
  it 'returns hazard data' do
    result = Client.get_data('/api/v1/hazards/')
    result = result[:data]
    expect(result.size).to eq(3)
    expect(result).to be_a(Array)
  end
end
