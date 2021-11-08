class VotesController < ApplicationController

  def update
    VoteFacade.voter(params)
    redirect_to "/hazards/#{params[:id]}"
  end
end
