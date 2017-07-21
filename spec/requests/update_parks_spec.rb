require 'rails_helper'

describe "the update park route", :type => :request do
  park = FactoryGirl.create(:park)

  it 'tests the put route' do
    put "/parks/#{park.id}", params: { :name => 'Rocky Mountain'}
    get "/parks/#{park.id}"
    expect(JSON.parse(response.body)["name"]).to eq('Rocky Mountain')
  end
end
