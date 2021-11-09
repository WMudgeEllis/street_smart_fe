class VoteFacade

  def self.vote(params, email)
    if params[:upvote]
      VoteService.upvote(params[:id], params[:votes].to_i + 1, email)
    elsif params[:downvote]
      VoteService.downvote(params[:id], params[:votes].to_i + 1, email)
    end
  end

end
