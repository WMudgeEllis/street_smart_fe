class HazardFacade
  def self.all_hazards(ip)
    hazard_data = HazardService.get_hazards_index(ip)
    hazard_data.map do |hazard|
      Hazard.new(hazard)
    end
  end

  def self.one_hazard(id)
    data = HazardService.get_one_hazard(id)
    Hazard.new(data)
  end
end
