# -*- encoding : utf-8 -*-

require 'helper'

module Reservation
  class TestHotel < Test::Unit::TestCase

    def test_calculate_regular
      line = 'Regular: 2013-05-26, 2013-05-27, 2013-05-28'
      input_type = 'textfile'
      textfile =  Input.kclass(input_type).new(line)
      output = Output.new

      Hotel.calculate(textfile, output)
      assert output.hotels.size > 0

      lakewood = output.hotels[:lakewood]
      assert_equal (90 + 80 + 80), lakewood.total_price

      bridgewood = output.hotels[:bridgewood]
      assert_equal (60 + 110 + 110), bridgewood.total_price

      ridgewood = output.hotels[:ridgewood]
      assert_equal (150 + 100 + 100), ridgewood.total_price
    end

    def test_calculate_rewards
      line = 'Rewards: 2013-05-26, 2013-05-27, 2013-05-28'
      input_type = 'textfile'
      textfile =  Input.kclass(input_type).new(line)
      output = Output.new

      Hotel.calculate(textfile, output)
      assert output.hotels.size > 0

      lakewood = output.hotels[:lakewood]
      assert_equal (80 + 80 + 80), lakewood.total_price

      bridgewood = output.hotels[:bridgewood]
      assert_equal (50 + 110 + 110), bridgewood.total_price

      ridgewood = output.hotels[:ridgewood]
      assert_equal (40 + 100 + 100), ridgewood.total_price
    end

  end
end