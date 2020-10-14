class Concert
  attr_reader :band, :venue, :date
  @@all = []

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue
    @@all << self
  end

  def self.all
    @@all
  end

  def hometown_show?
    venue.city == band.hometown
  end

  def introduction
    "Hello #{venue.city}!!!!!, we are #{band.name} and we're from #{band.hometown}"
  end
end