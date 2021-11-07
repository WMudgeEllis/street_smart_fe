class WelcomeController < ApplicationController
  def index
    ip = request.ip
    @hazards= HazardFacade.all_hazards(ip)
    @hazards_coords = @hazards.map do |hazard|
      [hazard.latitude.to_f, hazard.longitude.to_f, hazard.id]
    end
  end
end
