class VotesController < ApplicationController

  def update
    email = current_user.email
    VoteFacade.vote(params, email)
    redirect_to "/hazards/#{params[:id]}"
  end
end
