# frozen_string_literal: true

require_relative 'takeruun_gem/version'
require_relative 'takeruun_gem/configuration'

module TakeruunGem
  class Error < StandardError; end

  class << self
    def configure
      yield configuration
    end

    def configuration
      Configuration.instance
    end

    def hello
      'Hello'
    end

    def hello_app_name
      "Hello #{TakeruunGem.configuration.app_name}"
    end
  end
end
