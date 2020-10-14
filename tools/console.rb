require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

band1 = Band.new("Band One", "Onetown")
band2 = Band.new("Band Two", "Two City")
band3 = Band.new("Band Three", "Threeburg")
band4 = Band.new("Band Four", "Foursville")

venue1 = Venue.new("The Place", "Five Corners")
venue2 = Venue.new("The Library", "Threeburg")
venue3 = Venue.new("The Bad Place", "Onetown")

concert1 = Concert.new("Monday", band1, venue1)
concert2 = Concert.new("Tuesday", band2, venue3)
concert3 = Concert.new("Friday", band3, venue2)
concert4 = Concert.new("Thursday", band2, venue1)

band1.play_in_venue(venue3, "Wednesday")
band2.play_in_venue(venue1, "Tomorrow")
band3.play_in_venue(venue2, "Monday")
band4.play_in_venue(venue2, "Today")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
