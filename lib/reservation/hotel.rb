# -*- encoding : utf-8 -*-

require 'reservation/hotels/hotel_base'
require 'reservation/hotels/bridgewood'
require 'reservation/hotels/lakewood'
require 'reservation/hotels/ridgewood'

module Reservation
  class Hotel

    def self.calculate(input, output)
      hotels.each do |hotel_klass|
        hotel = hotel_klass.new
        input.check_days.each_with_index do |index, check_day|
          price = hotel.price(input.current_type(index), check_day)
          hotel.calculate_price(price)
        end
        output.add_hotel(hotel)
      end
    end

    private

    def self.hotels
      [ Lakewood, Bridgewood, Ridgewood ]
    end

  end
end