class VotesController < ApplicationController

  def update
    if params[:upvote]
      VoteService.upvote(params[:id], params[:votes].to_i + 1)
    elsif params[:downvote]
      VoteService.downvote(params[:id], hazard.downvotes)
    end

    redirect_to "/hazards/#{params[:id]}"
  end

end
