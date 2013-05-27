# -*- encoding : utf-8 -*-

require 'helper'

module Reservation
  module Hotels
    class TestLakewood < Test::Unit::TestCase

      def setup
        @weekend = '2013-05-26' # Sunday
        @weekday = '2013-05-27' # Monday
        @hotel = Lakewood.new
      end

      def test_name
        assert_equal 'Lakewood', @hotel.name
      end

      def test_rating
        assert_equal 3, @hotel.rating
      end

      def test_regular_price
        assert_equal 90, @hotel.regular_price(@weekend)
        assert_equal 110, @hotel.regular_price(@weekday)
      end

      def test_rewards_price
        assert_equal 80, @hotel.rewards_price(@weekend)
        assert_equal 80, @hotel.rewards_price(@weekday)
      end

    end
  end
end