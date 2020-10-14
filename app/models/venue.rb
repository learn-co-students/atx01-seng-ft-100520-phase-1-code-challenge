class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        allconcerts = []
        Concert.all.map do |concert|
            if concert.venue == self
                allconcerts << concert
            end
        end
        allconcerts
    end

    def bands
        allbands = []
        Concert.all.map do |concert|
            if concert.venue == self
                allbands << concert.band.name
            end
        end
        allbands
        #for this method, I wasn't sure if I wanted it to return the band names or instances, but I had it grab the names bc it looked nicer :)
    end

    def concert_on(date)
        self.concerts.find do |concert|
         date == concert.date
        end
    end
    
    def most_frequent_band
    self.bands.detect do |element|
        self.bands.count(element)>1
        end
    end
end