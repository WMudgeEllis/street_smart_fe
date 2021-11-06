class HazardsController < ApplicationController
  def index
    ip = request.ip
    @hazards= HazardFacade.all_hazards(ip)

  end
end
