class LastAirbenderApiService
  class << self 

    def search_nations(name)
      conn = faraday.get("/api/v1/characters?affiliation=#{name.first}+#{name.last}&perPage=100")
      parse(conn)
    end


    private

    def parse(arg)
      JSON.parse(arg.body, symbolize_names: true)
    end

    def faraday
      Faraday.new('https://last-airbender-api.herokuapp.com')
    end

  end
end
