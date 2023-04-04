require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  context "GET /names" do
    it 'should return the name Julia' do
      response = get('/names?name=Julia')

      expect(response.status).to eq(200)
      expect(response.body).to eq('Julia')
    end

    it 'should return the name Mary' do
      response = get('/names?name=Mary')

      expect(response.status).to eq(200)
      expect(response.body).to eq('Mary')
    end

    it 'should return the name Karim' do
      response = get('/names?name=Karim')

      expect(response.status).to eq(200)
      expect(response.body).to eq('Karim')
    end
  end
end