# -*- encoding : utf-8 -*-

require 'helper'

class TestReservationSystem < Test::Unit::TestCase

  def test_reservate_textfile
    line = 'Regular: 2013-05-26, 2013-05-27, 2013-05-28'
    input_type = 'textfile'
    textfile = Reservation::Input.kclass(input_type).new(line)
    hotel = ReservationSystem.reservate(textfile)
    assert_equal 'Lakewood', hotel.name
  end

  def test_author
    assert_equal "Henry Lee", ReservationSystem.author
  end

end
