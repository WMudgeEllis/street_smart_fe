class HazardFacade
  def self.all_hazards(ip)
    hazard_data = HazardService.get_hazards_index(ip)
    hazard_data.map do |hazard|
      Hazard.new(hazard)
    end
  end
end
