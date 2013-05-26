# -*- encoding : utf-8 -*-

require 'reservation/inputs/input_base'
require 'reservation/inputs/terminal'
require 'reservation/inputs/textfile'

module Reservation
  class Input

    class << self

      def kclass(type)
        case type
        when 'textfile'
          Inputs::Textfile
        when 'terminal'
          Inputs::Terminal
        else
          raise NotImplementError
        end
      end

    end

  end
end