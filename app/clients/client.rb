class Client
  class << self
    def get_data(endpoint)
      parse_data(conn.get(endpoint))
    end

    def conn
      Faraday.new('https://street-smart-be.herokuapp.com')
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
