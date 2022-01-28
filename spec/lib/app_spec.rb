# frozen_string_literal: true

require 'rack/test'
require_relative '../../app'

describe 'index' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  context 'GET /' do
    it 'returns status code 200' do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end

  context 'GET /education' do
    it 'returns status code 200' do
    get '/education'

    expect(last_response.status).to eq(200)
    end
  end

  context 'GET /pr' do
    it 'returns status code 200' do
    get '/pr'

    expect(last_response.status).to eq(200)
    end
  end
  
end
