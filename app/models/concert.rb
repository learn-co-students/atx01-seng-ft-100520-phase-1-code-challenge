class Concert
    attr_accessor :date, :band, :venue

    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@all << self
    end

    def hometown_show
        @venue.city == @band.hometown
    end 

    def introduction
        city = @venue.city
        band_name = @band.name
        band_hometown = @band.hometown
        "Hello #{city}!!!!!, we are #{band_name} and we're from #{band_hometown}"
    end

    def self.all
        @@all
    end
end