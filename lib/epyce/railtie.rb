require 'epyce'
require 'rails'

module Epyce
  class Railtie < Rails::Railtie
    railtie_name :epyce
  end

  class Engine < Rails::Engine
    epyce_path = File.expand_path(File.join(File.dirname(__FILE__), '../..'))
    paths["app/views"] << File.join(epyce_path, "app/views")
  end

end
