class WelcomeController < ApplicationController
  before_action :login_redirect

  def index
    ip = request.ip
    if request.ip == "::1" || request.ip == "127.0.0.1"
      ip = '13.71.196.84'
    end
    @hazards= HazardFacade.all_hazards(ip)
    @hazards_coords = @hazards.map do |hazard|
      [hazard.latitude.to_f, hazard.longitude.to_f, hazard.id]
    end
  end
end
