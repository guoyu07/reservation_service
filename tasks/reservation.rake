# -*- encoding : utf-8 -*-

namespace :hotel do

  desc "Hotel Reservation from textfile"
  task :reservate_textfile => :environment do
    puts "START reservate_textfile"
    puts "END reservate_textfile"
  end

  desc "Hotel Reservation from terminal"
  task :reservate_terminal => :environment do
    puts "START reservate_terminal"
    puts "END reservate_terminal"
  end

end