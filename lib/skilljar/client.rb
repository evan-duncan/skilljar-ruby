# frozen_string_literal: true

require 'base64'
require 'json'
require 'rest-client'

module Skilljar
  ##
  # HTTP Client for interacting with the Skilljar API
  class Client
    BASE_URI = 'https://api.skilljar.com/v1'

    class << self
      def get(name)
        define_method(name.to_s) { make_request(:get, name.to_s.kebabize) }
      end
    end

    # @param api_key [String]
    # = Example
    #   client = Skilljar::Client.new("sk-live-abcdeg")
    def initialize(api_key)
      raise Skilljar::ClientCredentialsMissing if api_key.nil?

      @api_key = api_key
    end

    get :ping
    get :domains
    get :groups
    get :offers
    get :promo_code_pools
    get :promo_codes
    get :users
    get :vilt_session_events
    get :vilt_session_registrations
    get :webhooks

    private

    def make_request(method, path, payload = {})
      args = []
      args << method
      args << "#{BASE_URI}/#{path}"
      args << JSON.generate(payload) if %i[post put].include? method
      args << { content_type: :json, authorization: authorization }

      response = RestClient.send(*args)

      JSON.parse response
    end

    def authorization
      @authorization ||= Base64.strict_encode64("#{@api_key}:")
    end
  end
end
