# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
Home.destroy_all

h1 = Home.create(address: "111 home way", description: "1 bed 1 bath", price: "$100,000")
comment = Comment.create(content: "Nice!", home: h1)

h2 = Home.create(address: "11311 bad st.", description: "2 bed 2 bath", price: "$300,000")
c1 = Comment.create(content: "bad!", home: h2)
c2 = Comment.create(content: "new!", home: h2)