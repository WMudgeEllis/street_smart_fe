class Hazard
  attr_reader :id,
              :type,
              :title,
              :description,
              :longitude,
              :latitude,
              :category,
              :upvotes,
              :downvotes,
              :email

  def initialize(data)
    @id = data[:id].to_i
    @type = data[:type]
    @title = data[:attributes][:title]
    @description = data[:attributes][:description]
    @longitude = data[:attributes][:longitude]
    @latitude = data[:attributes][:latitude]
    @category = data[:attributes][:category]
    @downvotes = data[:attributes][:vote_data][:downvote].to_i
    @upvotes = data[:attributes][:vote_data][:upvote].to_i
    @email = data[:attributes][:user_email]
  end
end
