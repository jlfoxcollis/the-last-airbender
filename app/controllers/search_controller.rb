class SearchController < ApplicationController

  def index
    @members = SearchFacade.search_by_nation(params[:nation])
    binding.pry
  end
end