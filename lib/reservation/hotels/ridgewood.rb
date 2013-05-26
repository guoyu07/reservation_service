# -*- encoding : utf-8 -*-

module Reservation
  module Hotels
    class Ridgewood < HotelBase

      def regular_price(date)
        weekend?(date) ? 150 : 220
      end

      def rewards_price(date)
        weekend?(date) ? 40 : 100
      end

      def name
        'Ridgewood'
      end

      def rating
        5
      end

    end
  end
end