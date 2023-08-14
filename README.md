# test-unit-ruby-core

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add test-unit-ruby-core

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install test-unit-ruby-core

## Usage

Use `core_assertions` with `test/unit` as follows:

```ruby
require "test/unit"
require "core_assertions"

Test::Unit::TestCase.include Test::Unit::CoreAssertions
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruby/test-unit-ruby-core.

## License

The gem is available as open source under the terms of the [Ruby's License](https://www.ruby-lang.org/en/about/license.txt)
