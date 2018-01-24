require "minitest/autorun"
require_relative "cashregister.rb"

class TestBook < Minitest::Test 

	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end

	def test_assert_lite_tuna_returns_5_dollars_88_cents
		assert_equal("5.88", grocery("Lite Tuna"))
	end
	
	def test_assert_milk_returns_1_dollars_99_cents
		assert_equal("1.99", grocery("Milk"))
	end

	def test_assert_whip_topping_returns_1_dollars_78_cents
		assert_equal("1.78", grocery("Whip Topping"))
	end

end

	