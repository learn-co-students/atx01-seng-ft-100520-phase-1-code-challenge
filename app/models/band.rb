class Band
  attr_accessor :name
  attr_reader :hometown

  @@all = []

  def initialize(name, hometown)
    @name = name
    @hometown = hometown

    @@all << self
  end

  def concerts
    Concert.all.select { |concert| concert.band == self }
  end

  def play_in_venue(venue, date)
    Concert.new(date, self, venue)
  end

  def all_introductions
    concerts.map do |concert|
      "Hello #{concert.venue.city}!!!!!, we are #{self.name} and we're from #{self.hometown}"
    end
  end

  def self.all
    @@all
  end
end