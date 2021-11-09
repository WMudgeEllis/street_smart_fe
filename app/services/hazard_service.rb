class HazardService
  def self.get_hazards_index(ip)
  results = Client.get_data("/api/v1/hazards?ip=#{ip}")
  results[:data]
  end

  def self.get_one_hazard(id)
    results = Client.get_data("/api/v1/hazards/#{id}")
    results[:data]
  end


  def self.delete_hazard(id)
    Client.conn.delete("/api/v1/hazards/#{id}")
  end
end
