class VoteFacade

  def vote(params)
    if params[:upvote]
      VoteService.upvote(params[:id], params[:votes].to_i + 1)
    elsif params[:downvote]
      VoteService.downvote(params[:id], params[:votes].to_i + 1)
    end
  end

end
