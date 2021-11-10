class WalkScoreService
  class << self
    def get_walk_score(ip)
      Client.get_data("/api/v1/walkscore?ip=#{ip}")
    end
  end
end
