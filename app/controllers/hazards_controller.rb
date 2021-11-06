class HazardsController < ApplicationController
  def index
    ip = request.ip
    @hazards= HazardFacade.all_hazards(ip)
  end

  def show
    @hazard = HazardFacade.one_hazard(params[:id])
  end
end
