require "linguist_ruby/client"
require "linguist_ruby/rails3/railtie" if defined?(Rails)

module Linguist
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