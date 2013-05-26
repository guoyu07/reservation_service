# -*- encoding : utf-8 -*-

require 'helper'

module Reservation
  module Inputs
    class TestTextfile < Test::Unit::TestCase

      def setup
        @line = 'Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)'
        @input = Textfile.new(@line)
      end

      def test_customer_type
        assert_equal 'regular', @input.customer_type
      end

      def test_check_days
        assert_equal 3, @input.check_days.size
      end

    end
  end
end