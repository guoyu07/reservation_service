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

    end
  end
end