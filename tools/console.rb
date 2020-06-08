require_relative '../config/environment.rb'


# Donor can donate twice but have a single instance ?
sir_williams = Donor.new("Sir Williams", 2000)
sir_hats = Donor.new("Sir Hats", 100)

michael = Artist.new("Michael", 30, sir_williams)
tomas = Artist.new("Tomas", 100, sir_hats)
john = Artist.new("John", 20, sir_hats)

# Impossible to donate to the same artist twice
# And have the artist refrence a single donor
# Without storing artist at donor and writing a method in artist
# Or passing artst instance to donor init

# Artist has a single donor
# Donor has multiple artists


small_gallery = Gallery.new("Small Gallery", "Fairfield")
big_gallery = Gallery.new("Big Gallery", "Stratford")
tiny_gallery = Gallery.new("Tiny Gallery", "NY")


mona_painting = Painting.new("Mona", 1000, michael, small_gallery)
mona_painting1 = Painting.new("Mona1", 400, tomas, tiny_gallery)
mona_painting2 = Painting.new("Mona2", 200, tomas, big_gallery)
mona_painting3 = Painting.new("Mona3", 1500, john, big_gallery)


michael.create_painting("Cheap Cheap", 1500, small_gallery)


binding.pry

puts "Bob Ross rules."
