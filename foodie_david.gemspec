
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "foodie_david/version"

Gem::Specification.new do |spec|
  spec.name          = "foodie_david"
  spec.version       = FoodieDavid::VERSION
  spec.authors       = ["DavidKar1uk1"]
  spec.email         = ["David.mwangi@kopokopo.com"]

  spec.summary       = %q{Gemfile to rate food.rb on its taste.}
  spec.description   = %q{Basically my first trial with Gemfile and how to use it.}
  spec.homepage      = "https://github.com/DavidKar1uk1/foodie_david.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = "https://github.com/DavidKar1uk1/foodie_david.git"
    spec.metadata["source_code_uri"] = "https://github.com/DavidKar1uk1/foodie_david.git"
    spec.metadata["changelog_uri"] = "https://github.com/DavidKar1uk1/foodie_david/blob/master/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"


end
