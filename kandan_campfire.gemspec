$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kandan_campfire/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kandan_campfire"
  s.version     = KandanCampfire::VERSION
  s.authors     = ["Michael Moen"]
  s.email       = ["michael@dojo4.com"]
  s.homepage    = ""
  s.summary     = "API endpoints for Campfire enabled apps."
  s.description = "API endpoints for Campfire enabled apps."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.14"
end
