class Donor
  attr_reader :name, :amount
  @@all = []

  def initialize(name, amount)
    @name = name
    @amount = amount
    @@all << self
  end

  def artists
    Artist.all.select{|artist| artist.donor == self}
  end

  def artist_names
    artists.map{|artist| artist.name}
  end

  def self.all
    @@all
  end
end
