# -*- encoding : utf-8 -*-

require 'helper'

module Reservation
  class TestInput < Test::Unit::TestCase

    def setup
      customer_type = 'regular'
      check_days = ['2013-05-26', '2013-05-27']
      @input = Input.new(customer_type, check_days)
    end

    def test_default_type
      assert_equal Input::CUSTOMER_TYPES.first, @input.default_type(nil)
      assert_equal Input::CUSTOMER_TYPES.first, @input.default_type("regular")
      assert_equal Input::CUSTOMER_TYPES.last, @input.default_type("rewards")
    end

    def test_current_type
      assert_equal 'regular', @input.customer_type
      @input.current_type(1)
      assert_equal 'rewards', @input.customer_type
    end

  end
end