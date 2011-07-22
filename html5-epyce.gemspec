# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.version = "0.1.0"
  s.date = "2011-07-22"
  s.platform    = Gem::Platform::RUBY
  
  s.name = "html5-epyce"
  s.authors = ["Yann Armand"]
  s.summary = %q{A rails layout including skeleton, HTML5S and knockout }
  s.description = %q{define a new layout and change asset manager defaults to get advantage of skeleton (http://www.getskeleton.com/),Damian Le Nouaille HTML5S (https://github.com/damln/Html5S) and knockout (http://knockoutjs.com)}
  s.email = "yann@harakys.com"
  s.homepage = "http://github.com/yarmand/html5-epyce"

  s.add_dependency "railties",      "~> 3.1.0.rc1"

  s.files = `git ls-files`.split("\n")

  s.has_rdoc = false
end
