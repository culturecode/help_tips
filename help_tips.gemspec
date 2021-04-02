$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "help_tips/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "help_tips"
  s.version     = HelpTips::VERSION
  s.date        = %q{2013-01-24}
  s.email       = 'technical@rrnpilot.org'
  s.homepage    = 'http://github.com/culturecode/help_tips'
  s.authors     = ['Nicholas Jakobsen', 'Ryan Wallace']
  s.summary     = "An easy way to add help tips to your site."
  s.description = "An easy way to add help tips to your site."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", [">= 3.2", "< 7"]

  s.add_development_dependency "sprockets", "~> 3" # ensure we don't move to Sprockets 4
  s.add_development_dependency "sqlite3"
end
