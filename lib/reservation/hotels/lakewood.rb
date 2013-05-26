# -*- encoding : utf-8 -*-

module Reservation
  module Hotels
    class Lakewood < HotelBase

      def regular_price(date)
        weekend?(date) ? 90 : 110
      end

      def rewards_price(date)
        weekend?(date) ? 80 : 80
      end

      def name
        'Lakewood'
      end

      def rating
        3
      end

    end
  end
end