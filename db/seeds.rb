# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating Movies [...]'

# -----------------  PASSWORDS : "secret"  ----------------- #

# 8 users (4 owners and 4 renters)
User.create(first_name: "Tintin", last_name: "Milou", email: "tintin@milou.fr", password: "secret")
User.create(first_name: "Captain", last_name: "Haddock", email: "rhum@bottle.fr", password: "secret")
User.create(first_name: "Professor", last_name: "Tournesol", email: "proftournesol@gmail.com", password: "secret")
User.create(first_name: "Dupont", last_name: "Dupondt ", email: "dupont@gmail.com", password: "secret")
# Plus the four of us as renters

# 8 bikes : 2 bikes by owner
Bike.create(user_id: 1, name: "Rockrider", description: "Designed for your first mountain biking tours, in dry weather, up to 1h30.", address: "44100, Nantes" , price_per_day: 10 , kind: "Mountain bike" , size: "27,5 in" )
# https://contents.mediadecathlon.com/p1276519/k$13d043f6eb2db637f37478db517dbb67/sq/velo-vtt-st-100-gris-275.jpg?format=auto&f=720x720
Bike.create(user_id: 1, name: "Riverside", description: "Pace your walks with ease! Thanks to the electric assistance.", address: "44200 Nantes", price_per_day: 13, kind: "Electric" , size: "27,5 in" )
# https://contents.mediadecathlon.com/p1922090/k$805ed784f8e4ec853c5b9939e4f67366/sq/velo-tout-chemin-electrique-riverside-500-e-gris-vert.jpg?format=auto&f=720x720
Bike.create(user_id: 2, name: "Btwin", description: "Mountain bike for children from 9 to 12 years old.", address: "44200, Nantes", price_per_day: 6, kind: "Mountain bike", size: "24 in")
# https://contents.mediadecathlon.com/p1732642/k$da7d34b23236655c16daa6d6d25d4511/sq/vtt-enfant-rockrider-st-500-24-pouces-9-12-ans-jaune-fluo.jpg?format=auto&f=720x720
Bike.create(user_id: 2, name: "Stilus", description: "This electric mountain bike is designed for ALL TERRAIN MOUNTAIN treks.", address: "44300, Nantes", price_per_day: 20, kind: "Electric mountain bike", size: "29 in")
# https://contents.mediadecathlon.com/p2094399/k$e75ab76eecad855dd8f54d02fd69ef1d/sq/velo-vtt-electrique-e-st-stilus-29.jpg?format=auto&f=720x720
Bike.create(user_id: 3, name: "Triban", description: "Road bike for your regular outings. It will guarantee you uncompromising comfort to ride further, more often.", address: "44800, Saint-Herblain", price_per_day: 15, kind: "Road bike", size: "27 in")
# https://contents.mediadecathlon.com/p1614865/k$adcb5aee7ea52acabeb6fa29f077608d/sq/triban-rc500-flatbar.jpg?format=auto&f=720x720
Bike.create(user_id: 3, name: "Btwin pliant", description: "Are you looking for an electric bike that is easy to take with you? The TILT 500 E can be stored in your car trunk and will accompany you on your week and weekend outings up to 35 km.", address: "44000, Nantes", price_per_day: 13, kind: "Electrical", size: "25 in")

# Bike.create(user_id: 4, name:, description: , address: , price_per_day: , kind: , size: )
# Bike.create(user_id: 5, name:, description: , address: , price_per_day: , kind: , size: )

# 6 bookings
# Booking.create(status: "pending", user_id: , bike_id: , start_at: , end_at: , total_price: )

puts 'Movies are added !'
