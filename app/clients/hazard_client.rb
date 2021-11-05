class HazardClient
  class << self
    def get_data(endpoint)
      parse_data(conn.get(endpoint))
    end

    def conn
      Faraday.new('http://localhost:3000')
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
