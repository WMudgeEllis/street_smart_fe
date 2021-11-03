class Place

  attr_reader :latitude, :longitude

  def initialize(hash)
    @latitude = hash[:latitude]
    @longitude = hash[:longitude]
  end
end
