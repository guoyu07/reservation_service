# -*- encoding : utf-8 -*-

module Reservation
  class Output

    attr_accessor :hotels

    def initialize
      @hotels = {}
    end

    def add_hotel(hotel)
      @hotels[hotel.name.downcase.to_sym] = hotel
    end

    def recommended_hotel
      if @hotels.size > 0
        sorted_hotels = @hotels.values.sort { |x, y| x.total_price <=> y.total_price }
        cheapest = sorted_hotels.first
        recommends = sorted_hotels.select{ |x| x.total_price <= cheapest.total_price }
        recommended = recommends.sort { |x, y| x.rating <=> y.rating }
        recommended.last
      end
    end

  end
end