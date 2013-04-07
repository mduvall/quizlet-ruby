module Quizlet
  class << self
    def client
      @client = Quizlet::Client.new
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