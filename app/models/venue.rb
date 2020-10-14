require_relative("concert")
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
        Concert.all.select{|concert| concert.venue == self}
    end

    def bands
        concerts.map{|concert| concert.band}
    end

    def concert_on(date)
        concerts.find{|concert| concert.date == date}
    end

    def most_frequent_band
        bands.max_by{|band| bands.count(band)}
    end
end