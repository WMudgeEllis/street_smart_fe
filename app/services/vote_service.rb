class VoteService

  def self.upvote(id, votes)
    Faraday.put("https://street-smart-be.herokuapp.com/api/v1/votes/#{id}") do |f|
      f.params['upvote'] = votes
    end
  end
end
