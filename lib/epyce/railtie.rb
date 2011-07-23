require 'epyce'
require 'rails'

module Epyce
  class Railtie < Rails::Railtie
    railtie_name :epyce
  end

  class Engine < Rails::Engine
  end

end
