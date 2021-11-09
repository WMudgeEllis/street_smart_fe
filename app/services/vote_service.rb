class VoteService

  def self.upvote(id, votes, email)
    Client.conn.put("/api/v1/votes/#{id}") do |f|
      f.params['upvote'] = votes
      f.params['user_email'] = email
    end
  end

  def self.downvote(id, votes, email)
    Client.conn.put("/api/v1/votes/#{id}") do |f|
      f.params['downvote'] = votes
      f.params['user_email'] = email
    end
  end
end
