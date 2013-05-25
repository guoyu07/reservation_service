# -*- encoding : utf-8 -*-

require 'reservation/inputs/input_base'
require 'reservation/inputs/terminal'
require 'reservation/inputs/textfile'

module Reservation
  class Input

    attr_accessor :customer_type, :check_days

    CUSTOMER_TYPES = ["regular", "rewards"]

    def initialize(options)
      @customer_type = default_type(options[:customer_type])
      @check_days = options[:check_days]
    end

    def default_type(type)
      CUSTOMER_TYPES.include?(type) ? type : CUSTOMER_TYPES.first
    end

  end
end