# frozen_string_literal: true

require 'skilljar/client'
require 'rest-client'

module Skilljar
  RSpec.describe Client do
    it 'should require client credentials' do
      expect { Skilljar::Client.new(nil) }.to raise_error(
        Skilljar::ClientCredentialsMissing
      )
    end

    it 'should make a request to the skilljar API' do
      client = Skilljar::Client.new('asdf')
      allow(RestClient::Request).to receive(:execute).and_return('{}')
      expect(RestClient::Request).to receive(:execute)

      client.ping
    end
  end
end
