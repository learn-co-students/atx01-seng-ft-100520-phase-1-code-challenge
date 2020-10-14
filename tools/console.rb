require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



redhot = Band.new("Red Hot Chili Peppers", "LA")
ledzep = Band.new("Led Zeppelin", "Detroit")
u2 = Band.new("U2", "London")

ustreet = Venue.new("U Street Music Hall", "Washington, D.C.")
mann = Venue.new("Mann Center", "Philadelphia")
ninethirtyclub = Venue.new("9:30 Club", "Washington, D.C.")
uno = Venue.new("Uno's", "Detroit")

C1 = Concert.new("October 11", redhot, mann)
C2 = Concert.new("November 1", ledzep, ustreet)
C3 = Concert.new("July 1", u2, ninethirtyclub)
C4 = Concert.new("January 1", ledzep, mann)
C5 = Concert.new("December 2", ledzep, uno)
C6 = Concert.new("July 1", redhot, ninethirtyclub)
C7 = Concert.new("March 3", ledzep, mann)
C8 = Concert.new("July 24", redhot, ninethirtyclub)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line


