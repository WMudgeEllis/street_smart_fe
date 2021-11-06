class HazardsController < ApplicationController
  def index
    @hazards= HazardFacade.all_hazards
    @hazards_coords = @hazards.map do |hazard|
      [hazard.latitude.to_f, hazard.longitude.to_f, hazard.id]
    end
  end
end
