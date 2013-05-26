# -*- encoding : utf-8 -*-

require 'helper'

module Reservation
  class TestHotel < Test::Unit::TestCase

    def setup
      customer_type = 'regular'
      check_days = ['2013-05-26', '2013-05-27']
      @input = Input.new(customer_type, check_days)
      @output = Output.new
    end

    def test_calculate
      Hotel.calculate(@input, @output)
      assert @output.hotels.size > 0

      lakewood = @output.hotels[:lakewood]
      assert_equal (90 + 80), lakewood.total_price

      bridgewood = @output.hotels[:bridgewood]
      assert_equal (60 + 110), bridgewood.total_price

      ridgewood = @output.hotels[:ridgewood]
      assert_equal (150 + 100), ridgewood.total_price
    end

  end
end