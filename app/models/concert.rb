class Concert
    attr_accessor :date , :band, :venue
    
    @@all = []

#date as string : 01 OCT 2010
def initialize(date, band, venue)
@date = date
@band = band
@venue = venue

@@all << self
end

def self.all
@@all
end

def hometown_show
venue.city == band.hometown
end

def introduction
 puts " Hello #{venue.city}!!!!!, We are #{band.name}, and we are from #{band.hometown}!!!!"
end

######
end###