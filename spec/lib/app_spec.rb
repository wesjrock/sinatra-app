# frozen_string_literal: true

require 'rack/test'
require_relative '../../app'

describe 'index' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  context 'GET /' do
    it 'returns a 200 status' do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end

  context 'GET /education' do
    it 'returns a 200 status' do
      get '/education'
      expect(last_response.status).to eq(200)
    end
  end

  context 'GET /pr' do
    it 'returns a 200 status' do
      get '/pr'
      expect(last_response.status).to eq(200)
    end
  end

  context 'GET not_found' do
    it 'returns a 404 status' do
      get 'not_found'
      expect(last_response.status).to eq(404)
    end
  end

end
