require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

emos = Venue.new("Emos", "Austin")
blues = Venue.new("House of Blues", "Houston")
madison = Venue.new("madison", "NYC")
antones = Venue.new("Antones", "Austin")
nrg = Venue.new("NRG", "Houston")

muse = Band.new("Muse", "London")
phoenix = Band.new("Phoenix", "Paris")
strokes = Band.new("The Strokes", "NYC")

#####

concert1 = Concert.new("Jan 1", muse, emos)
concert2 = Concert.new("Jan 3", muse, blues)
concert3 = Concert.new("Jan 4", muse, nrg)

concert4 = Concert.new("Jan 20", phoenix, emos)
concert5 = Concert.new("Jan 24", phoenix, blues)

concert5 = Concert.new("Feb 2", strokes, madison)
concert6 = Concert.new("Feb 4", strokes, blues)
concert7 = Concert.new("Feb 14", strokes, emos)
concert8 = Concert.new("Feb 20", strokes, emos)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
