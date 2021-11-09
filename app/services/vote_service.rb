class VoteService

  def self.upvote(id, votes)
    Client.conn.put("/api/v1/votes/#{id}") do |f|
      f.params['upvote'] = votes
    end
  end

  def self.downvote(id, votes)
    Client.conn.put("/api/v1/votes/#{id}") do |f|
      f.params['downvote'] = votes
    end
  end
end
