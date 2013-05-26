# -*- encoding : utf-8 -*-

namespace :hotel do

  desc "Hotel Reservation from textfile"
  task :reservate_textfile do
    puts "START reservate_textfile"

    file = File.open("doc/sample.txt", "r:UTF-8")
    file.each_line.with_index do |line, index|
      line_no = index + 1
      puts "INPUT #{line_no}:"
      puts line

      if !line.empty? && line.include?(':')
        textfile = Reservation::Input.kclass('textfile').new(line)
        hotel = ReservationSystem.reservate(textfile)

        puts "OUTPUT #{line_no}"
        puts hotel
      else
        puts "INVALIDE INPUTS : line number #{line_no}"
      end
    end

    puts "END reservate_textfile"
  end

  desc "Hotel Reservation from terminal"
  task :reservate_terminal do
    puts "START reservate_terminal"
    puts "END reservate_terminal"
  end

end