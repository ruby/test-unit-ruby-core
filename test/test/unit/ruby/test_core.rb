# frozen_string_literal: true

require "test_helper"

class Test::Unit::Ruby::TestCore < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Test::Unit::Ruby::Core::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
