class HazardService
  def self.get_hazards_index
  results = HazardClient.get_data("/api/v1/hazards/")
  results[:data]
  end
end
