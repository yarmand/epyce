require "epyce/version"
require 'epyce/railtie'

module Epyce
  require 'epyce/railtie' if defined?(Rails)
end
