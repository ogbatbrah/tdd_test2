require "minitest/autorun"
require_relative "arry_compact.rb"
class Tdd_test2 < Minitest::Test

   def test_that_compact_works
      assert_equal([1, 5], arry_compact([1, nil, 5]))
    end

    def test_that_rstrip_removes_whitespace
        assert_equal("hello", myrstrip("hello  "))
    end
end