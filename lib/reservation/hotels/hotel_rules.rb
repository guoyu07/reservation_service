# -*- encoding : utf-8 -*-

module Reservation
  module Hotels
    module HotelRules

      CUSTOMER_TYPES = ['regular', 'rewards']

      CUSTOMER_TYPES.each do |type|

        define_method("#{type}?") do |str|
          type == str
        end

      end

    end
  end
end