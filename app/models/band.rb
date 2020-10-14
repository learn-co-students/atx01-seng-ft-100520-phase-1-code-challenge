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
        allconcerts = []
        Concert.all.map do |concert|
            if concert.band == self
                allconcerts << concert
            end
        end
        allconcerts
    end

    def play_in_venue(date, venue)
        Concert.new(date, self, venue)
    end

    def all_introductions
        introductions = []
        Concert.all.map do |concert|
            if concert.band == self
               introductions << concert.introduction
            end
        end
        introductions
    end

end