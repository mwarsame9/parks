require 'rails_helper'

describe "post a park route", :type => :request do
  before do
    post '/parks', params: { :name => 'Yellowstone',
                             :location => 'Wyoming',
                             :description => 'National park in Wyoming',
                             :park_type => 'National Park'
                          }
  end

  it 'returns the name' do
    expect(JSON.parse(response.body)['name']).to eq('Yellowstone')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
