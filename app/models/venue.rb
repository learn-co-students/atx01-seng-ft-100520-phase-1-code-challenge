require_relative './concert.rb'

class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def concerts
        Concert.all.select{ |concert| concert.venue == self }
    end

    def bands
        self.concerts.map{|concert| concert.band }.uniq
    end

    def concert_on(date)
        if self.concerts.find{ |concert| concert.date == date }
            return true
        else
            return false
        end
    end

    def most_frequent_band
        band_hash = {}
        # self.concerts.inject(Hash.new(0) {|h, v| h })
        self.bands.each{ |band|
            if band_hash[band.name] == nil
                band_hash[band.name] = 0
            end
            band_hash[band.name] += 1
        }
        band_name = band_hash.max_by{ |k, v| v }[0]
        # puts band_hash.max_by{ |k, v| v }
        #Band.all.find{|band| band.name == band_name}
        Band.all.find{|band| band.name == band_name}
    end

    def self.all
        @@all
    end
end