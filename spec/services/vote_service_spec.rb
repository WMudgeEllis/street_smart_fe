require "rails_helper"


RSpec.describe VoteService do

  it 'can upvote', :vcr do
    VoteService.upvote('1', 10, 'admin@admin.com')
  end

  it 'can downvote', :vcr do
    VoteService.downvote('1', 10, 'admin@admin.com')
  end
end
