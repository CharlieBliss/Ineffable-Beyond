# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new(username:"charlie", email: "charlie@bliss.com")

user.password = "password"

user.save


world = World.create(name:"Astoria")

story = world.stories.create(name: "The Wind that Shakes the Apartment on 30th Ave", author: user )

article = world.articles.create(title: "Charlie", content: "A young man that lives in an apartment", author: user)

tag = Tag.create(name: "Character")



