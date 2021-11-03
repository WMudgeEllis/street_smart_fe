class HazardsController < ApplicationController

  def index
    @place = Place.new({latitude: 35.2271, longitude: 80.8431})
  end

end
