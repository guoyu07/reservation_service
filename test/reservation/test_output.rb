# -*- encoding : utf-8 -*-

require 'helper'

module Reservation
  class TestOutput < Test::Unit::TestCase

    def setup
      @sample_hotels = { lakewood: { name: 'lakewood',
                                     rating: 3,
                                     price: 100 },
                         bridgewood: { name: 'bridgewood',
                                       rating: 4,
                                       price: 200 } }
      @output = Output.new
    end

    def test_recommended_hotel
      @output.hotels = @sample_hotels
      assert_equal 'lakewood', @output.recommended_hotel

      @sample_hotels[:lakewood][:price] = 1000
      @output.hotels = @sample_hotels
      assert_equal 'bridgewood', @output.recommended_hotel
    end

  end
end