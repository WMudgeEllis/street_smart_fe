class HazardService
  def self.get_hazards_index(ip)
  results = HazardClient.get_data("/api/v1/hazards?ip=#{ip}")
  results[:data]
  end

  def self.get_one_hazard(id)
    results = HazardClient.get_data("/api/v1/hazards/#{id}")
    results[:data]
  end

end
