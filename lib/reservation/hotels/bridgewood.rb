# -*- encoding : utf-8 -*-

module Reservation
  module Hotels
    class Bridgewood < HotelBase

      def regular_price(date)
        weekend?(date) ? 60 : 160
      end

      def rewards_price(date)
        weekend?(date) ? 50 : 110
      end

      def name
        'Bridgewood'
      end

      def rating
        4
      end

    end
  end
end