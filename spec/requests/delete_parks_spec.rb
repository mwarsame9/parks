require 'rails_helper'

describe "the delete park route", :type => :request do
  park = FactoryGirl.create(:park)

  it 'returns a deleted status' do
    get "/parks/#{park.id}"
    delete "/parks/#{park.id}"
    expect(response).to have_http_status(200)
  end
end
