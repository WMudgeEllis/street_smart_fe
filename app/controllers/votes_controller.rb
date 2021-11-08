class VotesController < ApplicationController

  def update
    VoteFacade.vote(params)
    redirect_to "/hazards/#{params[:id]}"
  end
end
