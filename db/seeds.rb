# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Destroying audio..."
Audio.destroy_all
puts "Destroying videos..."
Video.destroy_all
puts "Destroying pictures..."
Picture.destroy_all
puts "Destroying notes..."
Note.destroy_all
puts "Destroying journeys..."
Journey.destroy_all
puts "Destroying settings..."
Setting.destroy_all
puts "Destroying users..."
User.destroy_all
puts "Finished!"

puts "Creating users..."
heather = User.create!(username: "heather", email: "heather@email.com", password: "flosseveryday")
sidd = User.create!(username: "sidd", email: "sidd@email.com", password: "wantaduck?")
adriana = User.create!(username: "Adriana", email: "adriana@email.com", password: "learncode")

puts "Finished!"

puts "Creating settings..."
settings_1 = Setting.create!(user: heather, location_enable: true)
settings_2 = Setting.create!(user: sidd, location_enable: false)
settings_3 = Setting.create!(user: adriana, location_enable: true)

puts "Finished!"

puts "Creating journey..."
journey_1 = Journey.create!(user: heather, title: "latvia", start_date: Time.parse("Aug 8 2018 9:00"), end_date: Time.parse("Aug 16 2018 9:00") )
journey_2 = Journey.create!(user: heather, title: "lisbon", start_date: Time.parse("May 11 2020 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_3 = Journey.create!(user: sidd, title: "my house", start_date: Time.parse("Jan 1 1980 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_4 = Journey.create!(user: adriana, title: "Namibia", start_date: Time.parse("Nov 1 1980 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_5 = Journey.create!(user: adriana, title: "Bolivia", start_date: Time.parse("Jan 1 1980 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_6 = Journey.create!(user: adriana, title: "Bali", start_date: Time.parse("Jan 1 1980 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_7 = Journey.create!(user: adriana, title: "Mexico", start_date: Time.parse("Jan 1 1980 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_8 = Journey.create!(user: adriana, title: "Marocco", start_date: Time.parse("Jan 1 1980 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )

puts "Finished!"

puts "Creating items..."
item_2 = Note.create!(content: "Hello Isaline, pictures don't work yet so just pretend I'm one ^___^", comment: "Isn't this a beautiful picture that looks exactly like a note?", journey: journey_1 )
item_1 = Note.create!(content: "blah blah blah blah....hmmmm blah blah, and blah!", comment: "Insert midly amusing or interesting comment here!", journey: journey_1 )
item_3 = Note.create!(content: "Do do do do do do do do do do doooooooo beeee doooo!", comment: "Probably makes no sense having a comment on a note!", journey: journey_1 )
item_4 = Note.create!(content: "Why is this shop full of rubber ducks?", comment: "", journey: journey_2 )
item_5 = Note.create!(content: "Learning to code is making my brain melt, please save me!!", comment: "", journey: journey_2 )
item_6 = Note.create!(content: "Just sitting in the house", comment: "", journey: journey_3 )
audio_1 = Audio.new( journey: journey_2 )
file = URI.open("http://soundbible.com/grab.php?id=1264&type=mp3")
audio_1.audio_rec.attach(io: file, filename: 'audio_1.mp3', content_type: 'audio/mpeg')
audio_1.save!
video_1 = Video.new( journey: journey_2 )
file = URI.open("https://res.cloudinary.com/doh7xoars/video/upload/v1594072485/ember/seed/Pexels_Videos_2790317_bbxd34.mp4")
video_1.video_rec.attach(io: file, filename: 'video_1.mp4', content_type: 'video/mp4')
video_1.save!
picture_1 = Picture.new( journey: journey_2 )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594043683/ember/seed/pb727631efvm2o10n8obhninb7vb.jpg")
picture_1.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_1.save!


puts "Created #{Item.count} entries."


