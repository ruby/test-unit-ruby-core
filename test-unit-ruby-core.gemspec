# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "test-unit-ruby-core"
  spec.version = "1.0.6"
  spec.authors = ["Hiroshi SHIBATA", "Nobu Nakada"]
  spec.email = ["hsbt@ruby-lang.org", "nobu@ruby-lang.org"]

  spec.summary = "Additional test assertions for Ruby standard libraries."
  spec.description = spec.summary
  spec.homepage = "https://github.com/ruby/test-unit-ruby-core"
  spec.licenses = ["Ruby", "BSD-2-Clause"]
  spec.required_ruby_version = ">= 2.3"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = %w[
    lib/core_assertions.rb
    lib/envutil.rb
    lib/find_executable.rb
  ]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("test-unit")
end
