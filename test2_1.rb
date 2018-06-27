require "minitest/autorun"
require_relative "test2_0.rb"

class TddFizzBuzz < Minitest::Test

    def test_that_1_matches_returns_1
    	assert_equal(1, check_for_match("1111", "1122"))
    end

    def test_assert_2_matches_returns_2
    	assert_equal(2, check_for_match("1111", "1133"))
        # assert_equal(3, check_for_match("1111", "1233"))
        # assert_equal(4, check_for_match("1221", "1234"))
    end
   
   def test_if_winners_equal_2
   	assert_equal([2, 0], winarr(["1234", "1234", "1244", "1255"]))
   end

   def test_if_1_off_return
   	assert_equal(["1235"], check_for_match_arr(["1244", "1235", "1235", "1243"]))
   end
end
