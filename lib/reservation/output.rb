# -*- encoding : utf-8 -*-

module Reservation
  class Output

    attr_accessor :hotels

    def initialize
      @hotels = {}
    end

    def add_hotel(hotel)
      @hotels[hotel.name.to_sym] = hotel
    end

    def init_price(hotel, price)
      @hotels[hotel.name.to_sym] = { name: hotel.name,
                                     rating: hotel.rating,
                                     price: price }
    end

    def calculate_price(name, price)
      @hotels[name][:price] += price
    end

    # {
    #   lakewood: {
    #     name: 'lakewood',
    #     rating: 3,
    #     price: 100
    #   }
    # }
    def recommended_hotel
      if @hotels.size > 0
        sorted_hotels = @hotels.values.sort { |x, y| x[:price] <=> y[:price] }
        cheapest = sorted_hotels.first
        recommends = sorted_hotels.select{ |x| x[:price] <= cheapest[:price]}
        recommended = recommends.sort { |x, y| x[:rating] <=> y[:rating] }
        recommended.first[:name]
      end
    end

  end
end