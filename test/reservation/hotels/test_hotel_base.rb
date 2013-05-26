# -*- encoding : utf-8 -*-

require 'helper'

module Reservation
  module Hotels
    class TestHotelBase < Test::Unit::TestCase

      def setup
        @customer_type = 'regular'
        # Sunday
        @weekend = '2013-05-26'
        # Monday
        @weekday = '2013-05-27'
        @price = 100

        @base_hotel = HotelBase.new
      end

      def test_regular_type
        assert @base_hotel.regular?(@customer_type)
        assert !@base_hotel.rewards?(@customer_type)
      end

      def test_weekend
        assert @base_hotel.weekend?(@weekend)
        assert !@base_hotel.weekend?(@weekday)
      end

      def test_calculate_price
        assert_nil @base_hotel.total_price
        @base_hotel.calculate_price(@price)
        assert_equal @price, @base_hotel.total_price
      end

    end
  end
end