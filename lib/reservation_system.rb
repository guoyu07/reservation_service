# -*- encoding : utf-8 -*-

require 'reservation/input'
require 'reservation/output'
require 'reservation/hotel'

class ReservationSystem

    class << self

      def reservate(input)
        output = Reservation::Output.new
        Reservation::Hotel.calculate(input, output)
        output.recommended_hotel
      end

      def author
        "Henry Lee"
      end

    end

end