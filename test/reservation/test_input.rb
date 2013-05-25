# -*- encoding : utf-8 -*-

require 'helper'

module Reservation
  class TestInput < Test::Unit::TestCase

    def setup
      options = {}
      @input = Input.new(options)
    end

    def test_default_type
      assert_equal Input::CUSTOMER_TYPES.first, @input.default_type(nil)
      assert_equal Input::CUSTOMER_TYPES.first, @input.default_type("regular")
      assert_equal Input::CUSTOMER_TYPES.last, @input.default_type("rewards")
    end

  end
end