# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


place_cape_town = [
  { name: "Table Mountain", description: "A plateau formed over thousands of years of erosion, which overlooks the whole city while offering gorgeous 360s of the ocean, city, and surrounding mountains." },
  { name: "WoolsWorth", description: "The premier shopping establishment in all of Cape Town and quite possibly the entirety of South Africa." },
  { name: "Waterfront Market", description: "An open market in Cape Town near the beach that is notable because of its absence of having been visited by me." },
]

places = Place.create(place_cape_town)