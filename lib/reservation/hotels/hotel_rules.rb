# -*- encoding : utf-8 -*-

module Reservation
  module Hotels
    module HotelRules

      CUSTOMER_TYPES = ['regular', 'rewards']

      def regular?(type)
        'regular' == type
      end

      def rewards?(type)
        'rewards' == type
      end

    end
  end
end