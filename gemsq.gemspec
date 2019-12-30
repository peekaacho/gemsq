require_relative 'lib/gemsq/version'

Gem::Specification.new do |spec|
  spec.name          = "gemsq"
  spec.version       = Gemsq::VERSION
  spec.authors       = ["cho"]
  spec.email         = ["karen@caresharing.ph"]

  spec.summary       = %q{CLI-based RubyGems API query wrapper.}
  spec.description   = %q{CLI-based RubyGems API query wrapper.}
  spec.homepage      = "https://github.com/karenei/gemsq"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/karenei/gemsq"
  spec.metadata["changelog_uri"] = "https://github.com/karenei/gemsq"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "guard", "2.16.1"
  spec.add_development_dependency "guard-rspec", "4.7.3"
end
