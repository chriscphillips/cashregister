require "minitest/autorun"
require_relative "cashregister.rb"

class TestBook < Minitest::Test 

	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end

	def test_assert_100_returns_amount_return
		assert_equal("amount_return", amount_given("100"))
	end
	
end
	