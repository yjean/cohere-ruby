# frozen_string_literal: true

require_relative "lib/cohere/version"

Gem::Specification.new do |spec|
  spec.name = "cohere-ruby"
  spec.version = Cohere::VERSION
  spec.authors = ["Andrei Bondarev"]
  spec.email = ["andrei.bondarev13@gmail.com"]

  spec.summary = "Cohere API client for Ruby."
  spec.description = "Cohere API client for Ruby."
  spec.homepage = "https://github.com/andreibondarev/cohere-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/andreibondarev/cohere-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/andreibondarev/cohere-ruby/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 1"
  spec.add_dependency "faraday_middleware", "~> 1"
end
