class HazardsController < ApplicationController
  def index
    ip = request.ip
    @hazards= HazardFacade.all_hazards(ip)
    @hazards_coords = @hazards.map do |hazard|
      [hazard.latitude.to_f, hazard.longitude.to_f, hazard.id]
    end
  end

  def show
    @hazard = HazardFacade.one_hazard(params[:id])
  end
end
