$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "omniauth/beddit/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "omniauth-beddit"
  s.version     = Omniauth::Beddit::VERSION
  s.authors     = ["Randal Humphries"]
  s.email       = ["randal@randalhumphries.com"]
  s.homepage    = "https://github.com/randalhumphries/omniauth-beddit"
  s.summary     = %q{OmniAuth strategy for Beddit using OAuth2}
  s.description = %q{OmniAuth strategy for Beddit using OAuth2}
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec', '~> 3.4'
  s.add_development_dependency 'factory_girl', '~> 4.5'

  s.add_runtime_dependency 'oauth2', '~> 1.4'
  s.add_runtime_dependency 'omniauth', '~> 1.6.1'
  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.4'
end
