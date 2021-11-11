class WalkScoreFacade
  class << self
    def walk_score(ip)
      hash = WalkScoreService.get_walk_score(ip)
      WalkScore.new(hash[:data][:attributes])
    end
  end
end
