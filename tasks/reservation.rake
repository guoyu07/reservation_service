# -*- encoding : utf-8 -*-

namespace :hotel do

  desc "Hotel Reservation input from textfile"
  task :reservate_textfile do
    puts "START reservate_textfile"

    file = File.open("doc/sample.txt", "r:UTF-8")
    file.each_line.with_index do |line, index|
      line_no = index + 1
      puts "\nINPUT #{line_no}:"
      puts line

      if !line.empty? && line.include?(':')
        begin
          textfile = Reservation::Input.kclass('textfile').new(line)
          hotel = ReservationSystem.reservate(textfile)

          puts "OUTPUT #{line_no}"
          puts "#{hotel.name}\n"
        rescue Exception => e
          puts e, *(e.backtrace)
          puts "Something went wrong! Couldn't reservate hotel for your inputs."
        end
      else
        puts "INVALIDE INPUTS : line number #{line_no}"
      end
    end

    puts "\nEND reservate_textfile"
  end

  desc "Hotel Reservation input from terminal"
  task :reservate_terminal do
    puts "START reservate_terminal (use Ctrl + c to quit)"
    line_no = 1

    while(true)
      puts "\nInput customer_type Regular or Rewards (Press Enter for default Regular):"
      customer_type = STDIN.gets.chomp
      customer_type = customer_type.empty? ? "Regular" : customer_type

      puts "Input check-in date (multiple dates please separate with ','):"
      puts "The following date format is accepted: 2013-05-27,16Mar2009(mon)"
      check_days = STDIN.gets.chomp
      while check_days.empty?
        puts "Please input check-in date:"
        check_days = STDIN.gets.chomp
      end

      puts "\nINPUT #{line_no}:"
      puts "#{customer_type.capitalize}: #{check_days}"
      begin
        terminal = Reservation::Input.kclass('terminal').new(customer_type, check_days.split(','))
        hotel = ReservationSystem.reservate(terminal)

        puts "OUTPUT #{line_no}"
        puts "#{hotel.name} \n"
      rescue Exception => e
        puts e, *(e.backtrace)
        puts "Something went wrong! Couldn't reservate hotel for your inputs."
      end

      line_no += 1
    end

    puts "END reservate_terminal"
  end

end