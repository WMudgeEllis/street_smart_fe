class WalkScoreService
  class << self
    def get_walk_score(ip)
      Client.get_data("/api/v1/walkscore?ip=#{ip}")
    end
  end
end


# addition of a prefered stimulus in order to increase the occurance of a behavior
