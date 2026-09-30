# frozen_string_literal: true

require "test/unit"
require "core_assertions"

class TestCoreAssertions < Test::Unit::TestCase
  include Test::Unit::CoreAssertions

  def test_backtrace_filter_handles_missing_backtrace
    assert_equal(["No backtrace"], Test.filter_backtrace(nil))
  end

  def test_backtrace_filter_removes_internal_entries
    backtrace = [
      "/tmp/example.rb:1:in `run'",
      "/tmp/lib/test/unit.rb:2:in `assert'",
    ]

    assert_equal([backtrace.first], Test.filter_backtrace(backtrace))
  end

  def test_message_adds_sentence_endings
    object = Object.new
    object.extend(Test::Unit::Assertions)

    message = object.message("details") { "default" }

    assert_equal("details.\ndefault.", message.call)
  end

  def test_assert_separately_runs_assertions_in_child_ruby
    assert_separately([], <<~RUBY)
      assert_equal(4, 2 + 2)
    RUBY
  end

  def test_assert_separately_propagates_child_failure
    error = assert_raise(Test::Unit::AssertionFailedError) do
      assert_separately([], <<~RUBY)
        assert_equal(:expected, :actual)
      RUBY
    end

    assert_match(/expected/, error.message)
  end

  def test_assert_in_ractor_return_value
    assert_in_ractor(1, [2, 3]) do |one, ary|
      "the result"
    end => result

    assert_equal("the result", result)
  end

  def test_assert_in_ractor_counts_assertions
    before = _assertions
    assert_in_ractor do
      assert true
      assert true
    end

    assert_equal(2, _assertions - before)
  end

  def test_assert_in_ractor_failure
    error = assert_raise(Test::Unit::AssertionFailedError) do
      assert_in_ractor { assert_equal(1, 2) }
    end

    assert_match(/<1> expected but was/, error.message)
    assert_include(error.backtrace.join("\n"), __FILE__)
  end

  def test_assert_in_ractor_error
    error = assert_raise(RuntimeError) do
      assert_in_ractor { raise "boom" }
    end

    assert_equal("boom", error.message)
    assert_include(error.backtrace.join("\n"), __FILE__)
  end
end
