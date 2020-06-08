require_relative '../config/environment.rb'

michael = Artist.new("Michael", 30)
tomas = Artist.new("Tomas", 100)
john = Artist.new("John", 20)

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
