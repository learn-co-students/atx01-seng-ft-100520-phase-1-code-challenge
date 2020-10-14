class Concert
  # :band && :venue == readers because those shouldn't change, but :date could change
  attr_reader :band, :venue  
  attr_accessor :date

  @@all = []

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue

    @@all << self
  end

  def hometown_show?
    return true if self.band.hometown == self.venue.city
    false
  end

  def introduction
    "Hello #{self.venue.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"
  end

  def self.all
    @@all
  end
end