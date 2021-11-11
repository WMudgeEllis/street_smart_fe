class WalkScore
  attr_reader :score, :description

  def initialize(params)
    @score = params[:score]
    @description = params[:description]
  end
end
