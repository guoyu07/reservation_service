# -*- encoding : utf-8 -*-

require 'helper'

class TestReservationSystem < Test::Unit::TestCase

  def test_henry
    assert_equal "Henry Lee", ReservationSystem.author
  end

end
