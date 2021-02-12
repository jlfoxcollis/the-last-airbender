require 'rails_helper'

describe LastAirbenderApiService do
  it 'can search API endpoint by affiliation' do
    data = ["Fire", "Nation"]

    returned = LastAirbenderApiService.search_nations(data)

    expect(returned).to be_an(Array)
    expect(returned.length).to eq(97)
  end
end