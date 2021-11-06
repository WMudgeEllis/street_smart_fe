class HazardFacade
  def self.all_hazards
    hazard_data = HazardService.get_hazards_index
    hazard_data.map do |hazard|
      Hazard.new(hazard)
    end
  end
end
