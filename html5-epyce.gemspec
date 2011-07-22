# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.version = "0.1.0"
  s.date = "2011-07-22"

  s.name = "html5-epyce"
  s.authors = ["Yann Armand"]
  s.summary = %q{A rails layout including skeleton, HTML5S and knockout }
  s.description = %q{define a new layout and change asset manager defaults to get advantage of skeleton (http://www.getskeleton.com/),Damian Le Nouaille HTML5S (https://github.com/damln/Html5S) and knockout (http://knockoutjs.com)}
  s.email = "yann@harakys.com"
  s.homepage = "http://github.com/sporkd/compass-html5-boilerplate"

  s.files = %w(README.md LICENSE VERSION)
  s.files += %w(templates/project/files/htaccess)
  s.files += Dir.glob("public/*.*")
  s.files += Dir.glob("vendor/assets/stylesheets/**/*.*")
  s.files += Dir.glob("vendor/assets/images/**/*.*")
  s.files += Dir.glob("vendor/assets/javascripts/**/*.*")

  s.has_rdoc = false
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.add_dependency("compass", [">= 0.11.1"])
end
