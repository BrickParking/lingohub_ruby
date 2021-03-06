require "lingohub/client"
require "lingohub/rails3/railtie" if defined?(Rails)

module Lingohub
  class << self
    attr_accessor :environments, :protocol, :host, :username, :project

    def configure
      yield self
    end

    def default_value?(value)
      value.start_with?(":")
    end
  end
end
