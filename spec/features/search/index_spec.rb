require 'rails_helper'

describe 'it can search the airbender api' do
  describe 'for fire nation clansfolk' do
    it 'will return list of airbender' do
      visit "/"
      select "Fire Nation", from: "nation"
      click_on "Search For Members"
      expect(current_path).to eq(search_path)



    end

  end
end