class HazardsController < ApplicationController
  def index
    require "pry"; binding.pry
    ip = request.ip
    @hazards= HazardFacade.all_hazards(ip)
  end
end
