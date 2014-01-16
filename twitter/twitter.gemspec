$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "twitter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "twitter"
  s.version     = Twitter::VERSION
  s.authors     = ["Isha Aggarwal"]
  s.email       = ["isha.aggarwal@joshworkz.com"]
  s.homepage    = "localhost:3000/app2"
  s.summary     = "Twiiter app using Rails engine"
  s.description = "Twitter app"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "mysql"
end
