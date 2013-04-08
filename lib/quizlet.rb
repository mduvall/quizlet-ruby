module Quizlet
  class << self
    # Not the place to put this...duplicated
    def configure(opts)
      @access_token = opts[:access_token]
      @client_id = opts[:client_id]
    end

    def client
      @client = Quizlet::Client.new({access_token: @access_token, client_id: @client_id})
      @client
    end

    def respond_to_missing?(method, include_all=false)
      client.respond_to?(method, include_all)
    end

    # Delegate all calls to the client instance, top level module for convenience
    def respond_to?(method, include_all=false)
      client.respond_to?(method, include_all) || super
    end

    private

    def method_missing(method, *args, &block)
      if client.respond_to?(method)
        return client.send(method, *args, &block)
      else
        return super
      end
    end
  end
end

require 'quizlet/client'