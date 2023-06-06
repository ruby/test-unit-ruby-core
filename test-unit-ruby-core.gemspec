# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "test-unit-ruby-core"
  spec.version = "0.0.1"
  spec.authors = ["Hiroshi SHIBATA"]
  spec.email = ["hsbt@ruby-lang.org"]

  spec.summary = ""
  spec.description = spec.summary
  spec.homepage = "https://github.com/ruby/test-unit-ruby-core"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.require_paths = ["lib"]
end
