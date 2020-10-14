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
    Concert.all.select { |concert| concert.venue == self }
  end

  def bands
    concerts.map { |concert| concert.band }.uniq
  end

  def concert_on(date)
    concerts.detect { |concert| return concert if concert.date == date }
    return nil
  end

  def num_of_concerts(band)
    concerts.select { |concert| concert.band == band }.length
  end

  def most_frequent_band
    all_sorted_concerts = concerts.sort_by { |concert| self.num_of_concerts(concert.band) }
    all_sorted_concerts[-1].band
  end

  def self.all
    @@all
  end
end