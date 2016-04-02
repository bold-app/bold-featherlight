$:.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bold-featherlight"
  s.version     = '0.1.0'
  s.authors     = ["Jens Kraemer"]
  s.email       = ["jk@jkraemer.net"]
  s.homepage    = 'http://github.com/bold-app/bold-featherlight'
  s.summary     = "Featherlight Lightbox plugin for Bold"
  s.description = "Featherlight Lightbox plugin for Bold"
  s.license     = "MIT"

  s.files = Dir["{app,config,lib}/**/*", "LICENSE", "featherlight.LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]
end
