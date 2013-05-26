# -*- encoding : utf-8 -*-

require 'helper'

module Reservation
  class TestInput < Test::Unit::TestCase

    def setup
      @line = 'Rewards: 26Mar2009(thur), 27Mar2009(fri), 28Mar2009(sat)'
      @input_type = 'textfile'
    end

    def test_kclass
      textfile =  Input.kclass(@input_type).new(@line)
      assert textfile
      assert_equal 'rewards', textfile.customer_type
      assert_equal 3, textfile.check_days.size
    end

  end
end