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

  end
end