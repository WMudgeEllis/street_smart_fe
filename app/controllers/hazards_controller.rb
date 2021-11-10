class HazardsController < ApplicationController
  before_action :require_user

  def index
    ip = request.ip
    @hazards= HazardFacade.all_hazards(ip)
    @hazards_coords = @hazards.map do |hazard|
      [hazard.latitude.to_f, hazard.longitude.to_f, hazard.id]
    end
    @walkscore = WalkScoreFacade.walk_score(params[:ip])
  end

  def show
    @hazard = HazardFacade.one_hazard(params[:id])
    @walkscore = WalkScoreFacade.walk_score(params[:ip])
  end

  def destroy
    HazardService.delete_hazard(params[:id])
    redirect_to dashboard_path
  end

  def new
    ip = request.ip
    if request.ip == "::1" || request.ip == "127.0.0.1"
      ip = '73.95.222.170'
    end
    @user_coords = Geocoder.search(ip).first.coordinates
  end

  def create
    response = HazardService.create_hazard(hazard_params)
    if response[:data][:type] == 'hazard'
      flash[:success] = 'Hazard Recorded'
      redirect_to dashboard_path
    end
  end

  private

  def hazard_params
    params.permit(:title, :description, :latitude, :longitude, :category).merge({ user_email: current_user.email })
  end
end
