# -*- encoding : utf-8 -*-

module Reservation
  module Inputs
    class Terminal < InputBase

      def initialize(line)
        customer_type, check_days = parse_line(line)
        super(customer_type, check_days)
      end

    end
  end
end