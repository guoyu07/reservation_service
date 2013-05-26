# -*- encoding : utf-8 -*-

module Reservation
  module Inputs
    class Textfile < InputBase

      def initialize(line)
        customer_type, check_days = parse_line(line)
        super(customer_type, check_days)
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