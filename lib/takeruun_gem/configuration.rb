require 'singleton'

module TakeruunGem
  class Configuration
    include Singleton

    attr_accessor :app_name

    def initialize
      @app_name = 'TakeruunGem'
    end
  end
end
