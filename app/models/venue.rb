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
Concert.all.select{|c|c.venue == self}
end

def bands
concerts.map{|c|c.band}
end


# c1 = Concert.new("01 Jan 2022", b1, v1)
# c2 = Concert.new("06 Jul 2021", b2, v2)
# c3 = Concert.new("30 Dec 2020", b3, v3)
# c4 = Concert.new("01 Jan 2021", b4, v4)
# c5 = Concert.new("01 May 2021", b5, v5)
# test concert_on with dates and intances above
def concert_on(date)
concerts.find {|c|c.date == date}
end

def  most_frequent_band
    ##set up counter ??
    
    ##interate all bands

    # time is up!!!Last method/ not done
    #needs to listen to Marc and learn more Enumerables...Lol

end



    #####    
end##