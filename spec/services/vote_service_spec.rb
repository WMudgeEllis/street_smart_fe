require "rails_helper"


RSpec.describe VoteService do

  it 'can upvote', :vcr do
    VoteService.upvote('1', 10)
  end
end
