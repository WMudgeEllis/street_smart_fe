class HazardsController < ApplicationController
  def index
    @hazards= HazardFacade.all_hazards
  end
end
