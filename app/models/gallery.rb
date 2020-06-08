class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def paintings
    # Returns an array of all paintings in a gallery
    Painting.all.select{|painting| painting.gallery == self}
  end

  def artists
    # Return an array of all artists that have a painting in a gallery
    paintings.map{|painting| painting.artist}
  end

  def artist_names
    # Returns an array of all artists names in this gallery
    artists.map{|artist| artist.name}.uniq
  end

  def most_expensive_painting
    # Returns an instance of the most expensive paiting in a gallery
    paintings.max_by{|painting| painting.price}
  end

  def self.all
    @@all
  end

end
