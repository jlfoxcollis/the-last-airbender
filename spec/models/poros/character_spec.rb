require 'rails_helper'

describe Character do
  it 'can create a character' do
    data = {:_id=>"5cf5679a915ecad153ab68cc",
    :allies=>["Fire Nation"],
    :enemies=>["Aang"],
    :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
    :name=>"Afiko",
    :affiliation=>"Fire Nation"}

    char = Character.new(data)

    expect(char.name).to eq("Afiko")
    expect(char.allies).to be_an(Array)
    expect(char.affiliation).to eq("Fire Nation")
  end
end