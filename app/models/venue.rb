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
        Concert.all.select {|concert| concert.venue == self}
    end

    def bands
        concerts.map {|concert| concert.band.name}.uniq
    end

    def concert_on(date)
        concerts.select do |concert| 
            if concert.date == date
                return concert
            else
                return nil 
            end
        end
    end

    def most_frequent_band
        band_activity = concerts.map do |concert|
            concert.band
        end
        band_activity.max_by { |i| band_activity.count(i)}
    end
end