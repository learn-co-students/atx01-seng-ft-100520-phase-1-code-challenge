require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#name, hometown
b1 = Band.new("Guns'n'Roses","LA")
b2 = Band.new("Red Hot Chilli Peppers","San Diego,Ca")
b3 = Band.new("Queen", "London")
b4 = Band.new("Europe", "LA")
b5 = Band.new("The 3 brothers", "La grange")

#title, city

v1 = Venue.new("House of Blues","LA")
v2 = Venue.new("ATT center","San Antonio")
v3 = Venue.new("Hard Rock live!","Orlando,FL")
v4 = Venue.new("COTA","Austin,TX")
v5 = Venue.new("House of Blues","Orlando,FL")


#date as string : 01 OCT 2010
#date, band, venue

c1 = Concert.new("01 Jan 2022", b1, v1)
c2 = Concert.new("06 Jul 2021", b2, v2)
c3 = Concert.new("30 Dec 2020", b3, v3)
c4 = Concert.new("01 Jan 2021", b4, v4)
c5 = Concert.new("01 May 2021", b5, v5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line

puts "======================================================================"
