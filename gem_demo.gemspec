# frozen_string_literal: true

require_relative "lib/gem_demo/version"

Gem::Specification.new do |spec|
  spec.name = "gem_demo"
  spec.version = GemDemo::VERSION
  spec.authors = ["Developer Name"]
  spec.email = ["developer@example.com"]

  spec.summary = "deo gem"
  spec.description = "Demonstrate gem-writing best practices."
  spec.homepage = "https://www.horizonridge.studio/articles/a-practical-guide-to-creating-a-ruby-gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/brian-davis/urban-engine"
  spec.metadata["changelog_uri"] = "https://github.com/brian-davis/urban-engine"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "text", "~> 1.3"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end