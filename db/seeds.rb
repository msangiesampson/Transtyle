# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


colour = Colour.new
colour.colour = "000000"
colour.name = "black"
colour.save

colour = Colour.new
colour.colour = "ffffff"
colour.name = "white"
colour.save

o = Occasion.new
o.name = "formal"
o.save

o = Occasion.new
o.name = "casual"
o.save


s = Shape.new
s.avatar = "https://dl.dropboxusercontent.com/u/108831317/pug1.png"
s.description = "i dont know"
s.name = "Apple"
s.save
