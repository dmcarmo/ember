# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Destroying users..."
User.destroy_all
puts "Destroying journeys..."
Journey.destroy_all
puts "Destroying items..."
Item.destroy_all
puts "Finished!"

puts "Creating users..."
heather = User.create(email: "heather@email.com", password: "flosseveryday")

puts "Finished!"

puts "Creating journey..."
journey_1 = Journey.create(user: heather, title: "latvia", start_date: Time.parse("Aug 8 2018 9:00"), end_date: Time.parse("Aug 16 2018 9:00") )
journey_2 = Journey.create(user: heather, title: "lisbon", start_date: Time.parse("May 11 2020 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )

puts "Finished!"

puts "Creating items..."
item_1 = Item.new(item_type: "note", content: "blah blah blah blah....hmmmm blah blah, and blah!", commment: "Insert midly amusing or interesting comment here!", journey: journey_1 )
item_2 = Item.new(item_type: "note", content: "Hello Isaline, pictures don't work yet so just pretend I'm one ^___^", commment: "Isn't this a beautiful picture that looks exactly like a note?", journey: journey_1 )
item_3 = Item.new(item_type: "note", content: "Do do do do do do do do do do doooooooo beeee doooo!", commment: "Probably makes no sense having a comment on a note!", journey: journey_1 )
item_4 = Item.new(item_type: "note", content: "Why is this shop full of rubber ducks?", commment: "", journey: journey_2 )
item_5 = Item.new(item_type: "note", content: "Learning to code is making my brain melt, please save me!!", commment: "", journey: journey_2 )    

puts "Created #{Item.count} entries."

Time.parse("Jun 30 2018 8:00"), end_date: Time.parse("Aug 8 2018 8:00") )