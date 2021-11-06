class Hazard
  attr_reader :id, :type, :title, :description, :longitude, :latitude, :category, :user_id, :vote_data
  def initialize(data)
    @id = data[:id].to_i
    @type = data[:type]
    @title = data[:attributes][:title]
    @description = data[:attributes][:description]
    @longitude = data[:attributes][:longitude]
    @latitude = data[:attributes][:latitude]
    @category = data[:attributes][:category]
    @user_id = data[:attributes][:user_id].to_i
    @vote_data = data[:attributes][:vote_data]
  end
end
