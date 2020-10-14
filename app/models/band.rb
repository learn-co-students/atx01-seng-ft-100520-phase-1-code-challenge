class Band
attr_accessor :name
attr_reader :hometown

@@all = []

def initialize(name, hometown)
 @name = name
@hometown = hometown

@@all << self
 end

def self.all
    @@all
end

 
def concerts
Concert.all.select {|c|c.band == self}
end

def venues
concerts.map {|c|c.venue}
end

def play_in_venue(date, venue)
Concert.new(date, self, venue)
#date, band, venue
end

def cities
target = venues.map {|v|v.city}
target[0]
end

def all_instructions

    puts " Hello #{self.cities}!!!!!, We are #{self.name}, and we are from #{self.hometown}!!!!"

#returns an array of strings representing all the introductions for his band

end



########
end####