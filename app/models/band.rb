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
        Concert.all.select {|concert| concert.band == self}
    end

    def play_in_venue(venue, date)
        Concert.new(date, self, venue)
    end

    def all_introductions
        venue = concerts.map do |concert| 
            concert.venue
        end 
        city = venue.map do |venue| 
            venue.city
        end
        band = @name 
        hometown = @hometown
        city.map do |city|
            "Hello #{city}!!!!!, we are #{band} and we're from #{hometown}"
        end
    end
end