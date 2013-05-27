# -*- encoding : utf-8 -*-

require 'helper'

module Reservation
  class TestOutput < Test::Unit::TestCase

    def setup
      line = 'Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)'
      input_type = 'textfile'
      textfile =  Input.kclass(input_type).new(line)
      @output = Output.new
      Reservation::Hotel.calculate(textfile, @output)
    end

    def test_recommended_hotel
      assert_equal 3, @output.hotels.size
      assert_equal 'Bridgewood', @output.recommended_hotel.name
    end

  end
end