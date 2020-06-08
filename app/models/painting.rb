class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    # Belongs to an artist and a gallery
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  def self.total_price
    @@all.sum{|painting| painting.price}
  end

  def self.all
    @@all
  end

end
