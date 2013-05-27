# -*- encoding : utf-8 -*-

require 'reservation/hotels/hotel_rules'

module Reservation
  module Inputs
    class InputBase

      include Hotels::HotelRules

      attr_accessor :customer_type, :check_days

      def initialize(customer_type, check_days)
        @customer_type = default_type(customer_type)
        @check_days = check_days
      end

      def default_type(type)
        CUSTOMER_TYPES.include?(type) ? type : CUSTOMER_TYPES.first
      end

      def current_type(day_index)
        if day_index >= 1
          CUSTOMER_TYPES.last
        else
          self.customer_type
        end
      end

      # Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)
      def parse_line(line)
        line_arr = line.split(':')
        type = line_arr.first.downcase
        days = line_arr.last.split(',')
        [type, days]
      end

    end
  end
end