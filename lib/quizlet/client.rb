require 'quizlet/sets'
require 'faraday_middleware'
require 'json'

module Quizlet
  DEFAULT_BUILDER = Faraday::Builder.new do |b|
    b.adapter Faraday.default_adapter
  end

  CONNECTION_OPTIONS = {
    headers: {
      accept: 'application/json',
      user_agent: 'curl/7.24.0 (x86_64-apple-darwin12.0) libcurl/7.24.0 OpenSSL/0.9.8r zlib/1.2.5'
    },
    builder: DEFAULT_BUILDER,
  }

  class Client
    include Quizlet::Sets

    attr_reader :access_token, :client_id

    def initialize(opts)
      @access_token = opts[:access_token]
      @client_id = opts[:client_id]
    end

    def get(endpoint, params)
      request(:get, endpoint, params)
    end

    def post(endpoint, params)
      request(:post, endpoint, params)
    end

    def put(endpoint, params)
      request(:put, endpoint, params)
    end

    def delete(endpoint, params)
      request(:delete, endpoint, params)
    end

    def request(action, endpoint, params)
      res = connection.send(action, endpoint, params).env
      JSON.parse res[:body]
    end

    def connection
      @connection ||= Faraday.new('https://api.quizlet.com/2.0', CONNECTION_OPTIONS) do |conn|
        conn.authorization :Bearer, access_token
      end
    end
  end

end