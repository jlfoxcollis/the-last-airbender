class SearchFacade
  class << self

    def search_by_nation(params)
      name = params.split("_")
      data = LastAirbenderApiService.search_nations(name)
      characters(data)
    end

    def characters(data)
      data.map do |result|
        Character.new(result)
      end
    end
  end
end