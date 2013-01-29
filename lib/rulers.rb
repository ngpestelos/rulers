require "rulers/array"
require "rulers/version"

module Rulers
  class Application
    def call(env)
      puts [2,3,4].sum
      `echo debug > debug.txt`;
          [200, {'Content-Type' => 'text/html'},
            ["Hello from Ruby on Rulers!"]]
    end
  end
end
