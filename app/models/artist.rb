class Artist

  attr_reader :name, :years_experience, :donors

  @@all = []

  def initialize(name, years_experience)
    # Has many paintings, single donor
    @name = name
    @donors = []
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    # Returns an array of all galleries that an artists has paintings in
    paintings.map{|painting| painting.gallery}.uniq
  end

  def cities
    # Returns an array of all cities an artists has paintings in
    galleries.map{|gallery| gallery.city}
  end

  def create_painting(title, price, gallery)
    # Given the arguments of title, price and gallery, creates a new painting belonging to that artist
    Painting.new(title, price, self, gallery)
  end

  def add_donor(name, amount)
    @donors << Donor.new(name, amount)
  end

  def self.all
    @@all
  end

  def self.total_experience
    # Returns an integer that is the total years of exp of all artists
    @@all.sum{|artist| artist.years_experience}
  end

  def self.most_prolific
    # Returns an instance of the artist with the highest amount of paintings per year of experience.
    @@all.max_by{|artist| artist.years_experience / artist.paintings.size}
  end
end
