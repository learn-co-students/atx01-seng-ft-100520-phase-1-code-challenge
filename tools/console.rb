require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

# Band - name, hometown
b1 = Band.new("Band A", "Ft. Worth")
b2 = Band.new("Band B", "Seattle")
b3 = Band.new("Band c", "Los Angeles")

#Venue - title, city
v1 = Venue.new("Venue A", "Ft. Worth")
v2 = Venue.new("Venue B", "Dallas")
v3 = Venue.new("Venue C", "Tampa Bay")

#Concert - date, band, venue
c1 = Concert.new("1-25-2021", b1, v1)
c2 = Concert.new("3-25-2021", b2, v2)
c3 = Concert.new("5-25-2021", b3, v3)
c4 = Concert.new("7-25-2021", b1, v3)
c3 = Concert.new("9-25-2021", b3, v3)
c3 = Concert.new("11-25-2021", b3, v3)

puts " BANDS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
puts b1
puts b2
puts b3

puts " VENUES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
puts v1
puts v2
puts v3

puts " CONCERTS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
puts c1
puts c2
puts c3

puts " BANDS METHODS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
puts "Band#all_introductions"
puts b1.all_introductions
puts b2.all_introductions

puts " VENUES METHODS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
puts "Venue #concert_on(date)"
puts v3.concert_on(9-25-2021)
puts "Venue #most_frequent_band"
puts v3.most_frequent_band

puts " CONCERTS METHODS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
puts "Concert#hometown_show"
puts c1.hometown_show
puts "Concert#introduction"
puts c2.introduction

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
