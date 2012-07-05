$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "noodall-components-quicklinks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "noodall-components-quicklinks"
  s.version     = NoodallComponentsQuicklinks::VERSION
  s.authors     = ["Jordan Elver"]
  s.email       = ["info@wearebeef.co.uk"]
  s.homepage    = "https://github.com/noodall/noodall-components-quicklinks"
  s.summary     = "A simple list of links component for Noodall"
  s.description = "A simple list of links component for Noodall"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.markdown"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.1"
  s.add_development_dependency "sqlite3"
end
