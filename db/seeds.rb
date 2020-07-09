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
ashley = User.create!(username: "David", email: "david@email.com", password: "123123123")

puts "Finished!"

puts "Creating settings..."
settings_1 = Setting.create!(user: heather, location_enable: true)
settings_2 = Setting.create!(user: sidd, location_enable: false)
settings_3 = Setting.create!(user: adriana, location_enable: true)
settings_4 = Setting.create!(user: ashley, location_enable: true)

puts "Finished!"

puts "Creating journey..."
journey_1 = Journey.create!(user: heather, title: "latvia", start_date: Time.parse("Aug 8 2018 9:00"), end_date: Time.parse("Aug 16 2018 9:00") )
journey_2 = Journey.create!(user: heather, title: "lisbon", start_date: Time.parse("May 11 2020 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_3 = Journey.create!(user: sidd, title: "my house", start_date: Time.parse("Jan 1 1980 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_4 = Journey.create!(user: ashley, title: "Namibia", start_date: Time.parse("Nov 12 2006 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_5 = Journey.create!(user: ashley, title: "Bolivia", start_date: Time.parse("Mar 3 2012 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_6 = Journey.create!(user: ashley, title: "Kenya", start_date: Time.parse("Aug 30 2017 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_7 = Journey.create!(user: ashley, title: "Georgia & Armenia", start_date: Time.parse("Sep 3 2019 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_8 = Journey.create!(user: ashley, title: "Korea", start_date: Time.parse("Apr 28 2015 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_9 = Journey.create!(user: ashley, title: "Rwanda & Uganda", start_date: Time.parse("Sep 6 2017 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_11 = Journey.create!(user: ashley, title: "Dubai", start_date: Time.parse("Oct 7 2016 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_12 = Journey.create!(user: ashley, title: "Istanbul", start_date: Time.parse("Oct 23 2015 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_13 = Journey.create!(user: ashley, title: "Israel", start_date: Time.parse("Apr 12 2018 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_14 = Journey.create!(user: ashley, title: "Rom", start_date: Time.parse("Sep 4 2019 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )
journey_15 = Journey.create!(user: ashley, title: "Marocco", start_date: Time.parse("Nov 31 2008 9:00"), end_date: Time.parse("Jun 30 2020 9:00") )

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
#Namibia
picture_2 = Picture.new( journey: journey_4, location: "Namib desert, Namibia" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594224242/ember/seed/spqo63t0kaw8pqrbz1uub11853qz.jpg")
picture_2.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_2.save!
picture_3 = Picture.new( journey: journey_4, location: "Skeleton Coast, Namibia" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594225249/ember/seed/9dkdioy4f3w9kt8k7pog3dcyn3n7.jpg")
picture_3.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_3.save!
picture_4 = Picture.new( journey: journey_4, location: "Asab, Namibia" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594224636/ember/seed/zbcateyc4g2kp2ytarbjvh7o455i.jpg")
picture_4.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_4.save!
item_7 = Note.create!(content: "Diver for safari: Amare, donoa@email.com - or ask at Gobono Lodge", comment: "", journey: journey_4, location: "Windhoek, Namibia" )
picture_8 = Picture.new( journey: journey_4, location: "Tsumeb, Namibia" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594224372/ember/seed/oax2rr3fxxrgz3du2h3h56fbf28m.jpg")
picture_8.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_8.save!
item_8 = Note.create!(content: "Sorris Sorris Lodge - nine private villas in the rocky Damaraland, $$$ but worth every Dollar", comment: "", journey: journey_4, location: "Damaraland, Namibia" )
item_9 = Note.create!(content: "Namibia breweries - private tours with John/ +264 61 320 4999", comment: "", journey: journey_4, location: "Windhoek, Namibia" )
#Bolivia
picture_9 = Picture.new( journey: journey_5, location: "Salar de Uyuni, Bolivia" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594223252/ember/seed/o6vtsc4j117qw56fo3nx5hn7fen4.jpg")
picture_9.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_9.save!
item_10 = Note.create!(content: "Alasitas Festival, month-long festival in honor to Ekeko the Aymara god of abundance ... should bring fortunate and happiness", comment: "", journey: journey_5, location: "Lake Titicaca, Bolivia" )
item_11 = Note.create!(content: "Mocochinchi ... dehydrated peach cider - amazing taste", comment: "", journey: journey_5, location: "La Paz, Bolivia" )
picture_10 = Picture.new( journey: journey_5, location: "Tupiza, Bolivia" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594223001/ember/seed/rw7c1fwk06f7s1guv998nxkq9ncq.jpg")
picture_10.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_10.save!
picture_11 = Picture.new( journey: journey_5, location: "Potosi, Bolivia" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594222771/ember/seed/g2l2xoicawu9yuloj7tl7rqjt9z1.jpg")
picture_11.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_11.save!
item_12 = Note.create!(content: "Alpaca hostel, Cochabamba ... nice view from the second floor, room 10", comment: "", journey: journey_5, location: "Cochabamba, Bolivia" )
picture_12 = Picture.new( journey: journey_5, location: "Potosi, Bolivia" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594222589/ember/seed/zysaybpp1gobxdhladri7ky2kkp7.jpg")
picture_12.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_12.save!
#Dubai
picture_13 = Picture.new( journey: journey_11, location: "Abu Dhabi, Vereinigte Arabische Emirate" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594234604/ember/seed/zjiwxppqf04y10u58dg0f0a2ffmw.jpg")
picture_13.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_13.save!
picture_14 = Picture.new( journey: journey_11, location: "Abu Dhabi, Vereinigte Arabische Emirate" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594234547/ember/seed/hrwc4bxorrqxdm2112i3f1f4ng2a.jpg")
picture_14.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_14.save!
picture_15 = Picture.new( journey: journey_11, location: "Abu Dhabi, Vereinigte Arabische Emirate" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594224636/ember/seed/zbcateyc4g2kp2ytarbjvh7o455i.jpg")
picture_15.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_15.save!
item_13 = Note.create!(content: "Suad - driver +971 345 2359485", comment: "", journey: 1, location: "Al-Ain, Vereinigte Arabische Emirate" )
picture_16 = Picture.new( journey: journey_11, location: "Sweihan, Vereinigte Arabische Emirate" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594234248/ember/seed/khkh04t692fgedwd9dka3mwgfjig.jpg")
picture_16.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_16.save!
item_14 = Note.create!(content: "Bu Tafish - best seafood in Schardscha", comment: "", journey: journey_11, location: "Schardscha, Vereinigte Arabische Emirate" )
item_15 = Note.create!(content: "Hatta ... great for sunset", comment: "", journey: journey_11, location: "Hatta, Vereinigte Arabische Emirate" )
picture_17 = Picture.new( journey: journey_11, location: "Sweihan, Vereinigte Arabische Emirate" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594224372/ember/seed/oax2rr3fxxrgz3du2h3h56fbf28m.jpg")
picture_17.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_17.save!
picture_18 = Picture.new( journey: journey_11, location: "Sweihan, Vereinigte Arabische Emirate" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594234025/ember/seed/hwmm85qlcnddb645v4va48ilangq.jpg")
picture_18.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_18.save!
picture_19 = Picture.new( journey: journey_11, location: "Sweihan, Vereinigte Arabische Emirate" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594233438/ember/seed/1zpcu4rusdr8uwzs2k7vhy6h7oy0.jpg")
picture_19.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_19.save!
#Rwanda&Uganda
picture_20 = Picture.new( journey: journey_9, location: "Ruhondo, Rwanda" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594232895/ember/seed/j5vtlm8yug0ovyrp7t30bl3lgg43.jpg")
picture_20.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_20.save!
picture_21 = Picture.new( journey: journey_9, location: "Butaro, Rwanda" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594232821/ember/seed/al21djna78mp2b8vla2wmz6ivj4h.jpg")
picture_21.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_21.save!
picture_22 = Picture.new( journey: journey_9, location: "Kasenyi, Uganda" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594224636/ember/seed/zbcateyc4g2kp2ytarbjvh7o455i.jpg")
picture_22.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_22.save!
item_12 = Note.create!(content: "Climbing lions in the tree, Queen Elizabeth National Park", comment: "", journey: journey_9, location: "Katojo, Uganda" )
picture_23 = Picture.new( journey: journey_9, location: "Ndeke, Uganda" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594232336/ember/seed/139pdq3n8lykyreacw2ee3d9gmp9.jpg")
picture_23.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_23.save!
item_16 = Note.create!(content: "Boat to Entebbe, $12", comment: "", journey: journey_9, location: "Bukoba, Uganda" )
item_17 = Note.create!(content: "Gorilla trek Congo, ask at Lilly's place in Kigali, save & good service", comment: "", journey: journey_9, location: "Kigali, Rwanda" )
picture_24 = Picture.new( journey: journey_9, location: "Ngoma, Rwanda" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594232236/ember/seed/v1kxuhgymgguweertndp6zmhaey4.jpg")
picture_24.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_24.save!
picture_25 = Picture.new( journey: journey_9, location: "Kabale, Uganda" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594231768/ember/seed/kdnhcd2ahz6gvz81wg2pgmlf229q.jpg")
picture_25.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_25.save!
picture_26 = Picture.new( journey: journey_9, location: "Makole, Uganda" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594231712/ember/seed/uqysjqr7q00gkq4zle1ze33h92op.jpg")
picture_26.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_26.save!
#Korea
picture_27 = Picture.new( journey: journey_8, location: "Andong, Korea" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594231062/ember/seed/zyizhu8uv055jvtokjdpbv6kw5qp.jpg")
picture_27.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_27.save!
picture_28 = Picture.new( journey: journey_8, location: "Jeonju, Korea" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594230957/ember/seed/q43ilaov5mdd7n17mrkz3cd7yazn.jpg")
picture_28.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_28.save!
picture_29 = Picture.new( journey: journey_8, location: "Incheon, Korea" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594230559/ember/seed/yeab01n5wviwss63ruylh9ysk4qv.jpg")
picture_29.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_29.save!
item_18 = Note.create!(content: "", comment: "", journey: journey_8, location: "Busan, Korea" )
picture_30 = Picture.new( journey: journey_8, location: "Seoul, Korea" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594229960/ember/seed/gawi9qjexnr1cqrk8aywqr0al1dg.jpg")
picture_30.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_30.save!
item_19 = Note.create!(content: "Kopo 2 Pi - BBQ place, must eat: Bulgogi, Galbi & Spicy grilled chicken", comment: "", journey: journey_8, location: "Pohang, Korea" )
item_20 = Note.create!(content: "Omija-cha & Yuluma-cha from Jujube tea", comment: "", journey: journey_8, location: "Busan, Korea" )
#BGeorgia & Armenia
picture_31 = Picture.new( journey: journey_7, location: "Ganja, Georgien" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594229220/ember/seed/1qukv6rcshgr59oik31la4s6yplr.jpg")
picture_31.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_31.save!
picture_32 = Picture.new( journey: journey_7, location: "Tovuz, Georgien" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594229091/ember/seed/n5ejmy8vss547q0z1qzktfuj0kt5.jpg")
picture_32.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_32.save!
picture_33 = Picture.new( journey: journey_7, location: "Wanadsor, Armenia" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594227611/ember/seed/qz3rvoo48yx9snjmcehodg3pr73a.jpg")
picture_33.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_33.save!
video_2 = Video.new( journey: journey_7, location: "Jerawan, Armenia" )
file = URI.open("https://res.cloudinary.com/doh7xoars/video/upload/v1594227398/ember/seed/0srcs9ex1fvu0btcnai6pgulyrz1.mov")
video_2.video_rec.attach(io: file, filename: 'video_1.mp4', content_type: 'video/mp4')
video_2.save!
item_21 = Note.create!(content: "Climbing lions in the tree, Queen Elizabeth National Park", comment: "", journey: journey_7, location: "Katojo, Uganda" )
picture_34 = Picture.new( journey: journey_7, location: "Gudauri, Georgien" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594226421/ember/seed/z4xmhoj3tslryr1j0kvg8kinsp6v.jpg")
picture_34.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_34.save!
item_22 = Note.create!(content: "Chatschapuri, Restaurant Alazani near the church", comment: "", journey: journey_7, location: "Ananuri, Georgien" )
item_23 = Note.create!(content: "Chacha - georgian brandy, sometimes the call it wine vodka ... Binekhi ist the best one", comment: "", journey: journey_7, location: "Sighnaghi, Georgien" )
picture_35 = Picture.new( journey: journey_7, location: "Stepanzminda, Georgien" )
file = URI.open("https://res.cloudinary.com/doh7xoars/image/upload/v1594225717/ember/seed/bw8z1tgdz8w9ixcbim50z9do8txo.jpg")
picture_35.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_35.save!
#Istanbul
picture_36 = Picture.new( journey: journey_12, location: "Istanbul, Turkey" )
file = URI.open("https://www.dropbox.com/s/ej2emg1ysy0szk2/2019-07-19%2011.41.19.jpg?dl=0")
picture_36.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_36.save!
picture_37 = Picture.new( journey: journey_12, location: "Maslak, Turkey" )
file = URI.open("https://www.dropbox.com/s/we5c4j6walk022o/2019-07-19%2012.30.05-2.jpg?dl=0")
picture_37.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_37.save!
item_24 = Note.create!(content: "Crazy Bar & Staff,  Apa Nef, Ali Kaya Sokak No.3 Kat B1, 34330 Levent", comment: "", journey: journey_12, location: "Ankara, Turkey" )
item_25= Note.create!(content: "Nokta Sebzeli ...Dönner, Dönner", comment: "", journey: journey_12, location: "Antalya, Turkey" )
item_26= Note.create!(content: "Mustafa, guide, +90 530-539 561", comment: "", journey: journey_12, location: "Bodrum, Turkey" )
#Israel
item_27 = Note.create!(content: "Besarabia Bar  .... excellent hummus", comment: "", journey: journey_13, location: "Tel Aviv, Israel" )
item_28 = Note.create!(content: "Night out in Israel: Teder, HaMinzar, Uganda, October, Kuli Alma", comment: "", journey: journey_13, location: "Tel Aviv, Namibia" )
item_29 = Note.create!(content: "Bethlem Experience - ask for David", comment: "", journey: journey_13, location: "Jerusalem, Namibia" )
#Rom
picture_38 = Picture.new( journey: journey_14, location: "Rom, Italy" )
file = URI.open("https://www.dropbox.com/s/ery13cipe5xozg8/2019-10-10%2013.30.37.jpg?dl=0")
picture_38.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_38.save!
item_30 = Note.create!(content: "Otello ... tiramisu, tiramisu, tiramisu", comment: "", journey: journey_14, location: "Napoli, Italy" )
picture_39 = Picture.new( journey: journey_14, location: "Mailand, Italy" )
file = URI.open("https://www.dropbox.com/s/la29be3wa5r5x2e/2019-10-11%2011.43.23.jpg?dl=0")
picture_39.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_39.save!
item_31 = Note.create!(content: "Maranica - world-famous graffiti artists painted 22 houses", comment: "", journey: journey_14, location: "Damaraland, Namibia" )
item_32 = Note.create!(content: "Cardorna Center, Via Metastasio 3, Milan", comment: "", journey: journey_14, location: "Milan, Italy" )
#Marocco
picture_40 = Picture.new( journey: journey_15, location: "Marrakesh, Marocco" )
file = URI.open("https://www.dropbox.com/s/sqljuw2q371m5k8/2017-01-05%2013.37.19.jpg?dl=0")
picture_40.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_40.save!
item_33 = Note.create!(content: "Dar Zellji", comment: "", journey: journey_15, location: "Casablanca, Marocco" )
picture_41 = Picture.new( journey: journey_15, location: "Marrakesh, Marocco" )
file = URI.open("https://www.dropbox.com/s/82dtmww1p527hyn/2017-01-05%2013.31.22.jpg?dl=0")
picture_41.photo.attach(io: file, filename: 'picture_1.jpg', content_type: 'image/jpeg')
picture_41.save!
item_34 = Note.create!(content: "Tajine", comment: "", journey: journey_15, location: "Rabat, Marocco" )
item_35 = Note.create!(content: "Erg Chigaga Luxury Desert Camp", comment: "", journey: journey_15, location: "Quarzazate, Marocco" )




puts "Created #{Item.count} entries."


