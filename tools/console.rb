require_relative '../config/environment.rb'
require_relative '../app/models/band.rb'
require_relative '../app/models/venue.rb'
require_relative '../app/models/concert.rb'


def reload
  load 'config/environment.rb'
end


lil_uzi = Band.new("Lil Uzi", "NYC")
mgk = Band.new("Machiene Gun Kelly", "NYC")
front_porch_steps = Band.new("Front Porch Steps", "Austin")

green_elephant = Venue.new("Green Elephant", "NYC")
emos = Venue.new("Emos", "Austin")
madison_square = Venue.new("Madison Square", "NYC")

first_concert = Concert.new("10/12/2020", lil_uzi, green_elephant)
second_concert = Concert.new("10/20/2020", lil_uzi, emos)
third_concert = Concert.new("10/15/2020", mgk, green_elephant)

fourth_concert = mgk.play_in_venue(emos, "10/14/2020")
fifth_concert = lil_uzi.play_in_venue(emos, "10/14/2020")
sixth_concert = mgk.play_in_venue(emos, "10/19/2020")
seventh_concert = mgk.play_in_venue(emos, "10/21/2020")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
