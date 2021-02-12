require 'rails_helper'

describe 'it can search the airbender api' do
  describe 'for fire nation clansfolk' do
    it 'will return list of airbender' do
      visit "/"
      select "Fire Nation", from: "nation"
      click_on "Search For Members"
      expect(current_path).to eq(search_path)

      expect(page).to have_content("Total Citizens: 97")  
      expect(page.all('tr').count).to eq(26)
      expect(page.all('tr')[0]).to have_content("Name")
      expect(page.all('tr')[0]).to have_content("Allies")
      expect(page.all('tr')[0]).to have_content("Enemies")
      expect(page.all('tr')[0]).to have_content("Affiliations")
      expect(page.all('tr')[1]).to have_content("Afiko")

      expect(page.all('tr')[16].all('td')[2]).to have_content("None")
      expect(page.all('tr')[16].all('td')[3]).to have_content("None")
    end
  end
end