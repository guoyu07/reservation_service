# -*- encoding : utf-8 -*-

require 'date'

module Reservation
  module Hotels
    class HotelBase

      include HotelRules

      attr_accessor :total_price

      def regular_price(date)
        raise NotImplementError
      end

      def rewards_price(date)
        raise NotImplementError
      end

      def name
        raise NotImplementError
      end

      def rating
        raise NotImplementError
      end

      def price(type, date)
        if regular?(type)
          regular_price(date)
        else
          rewards_price(date)
        end
      end

      def weekend?(date)
        [0,6].include?(Date.parse(date).wday)
      end

      def calculate_price(price)
        if self.total_price.nil?
          self.total_price = price
        else
          self.total_price += price
        end
      end

    end
  end
end