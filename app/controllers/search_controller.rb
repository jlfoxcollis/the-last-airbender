class SearchController < ApplicationController

  def index
    @members = SearchFacade.search_by_nation(params[:nation])
  end
end