# -*- encoding : utf-8 -*-

module Reservation
  module Inputs
    class Terminal < InputBase

      def initialize(customer_type, check_days)
        super(customer_type, check_days)
      end

    end
  end
end