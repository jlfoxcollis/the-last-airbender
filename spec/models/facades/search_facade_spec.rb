require 'rails_helper'

describe SearchFacade do
  it 'can search through api endpoints' do
    data = "Fire_Nation"

    returned = SearchFacade.search_by_nation(data)

    expect(returned.count).to eq(97)
  end
end