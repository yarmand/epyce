# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "epyce/version"

Gem::Specification.new do |s|
  s.version = Epyce::VERSION
  s.date = Epyce::VERSION_DATE
  s.platform    = Gem::Platform::RUBY
  
  s.name = "epyce"
  s.authors = ["Yann Armand"]
  s.summary = %q{A rails layout including skeleton, HTML5S and knockout }
  s.description = %q{define a new layout and change asset manager defaults to get advantage of skeleton (http://www.getskeleton.com/),Damian Le Nouaille HTML5S (https://github.com/damln/Html5S) and knockout (http://knockoutjs.com)}
  s.email = "yann@harakys.com"
  s.homepage = "http://github.com/yarmand/epyce"
  s.has_rdoc = false

  s.add_dependency "railties",      "~> 3.1.0.rc1"
  s.add_dependency "haml"
  s.files = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

end
