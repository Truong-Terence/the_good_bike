# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating Movies [...]'

# 8 users (4 owners and 4 renters)
User.create(first_name: "Tintin", last_name: "Milou" )

# 8 bikes : 2 bikes by owner
Bike.create(user_id: 1, name: "Rockrider", description: "Conçu pour vos 1ères randonnées VTT, par temps sec, jusqu'à 1h30.", address: "44100, Nantes" , price_per_day: 10 , kind: "VTT" , size: "27,5 pouces" )
# https://contents.mediadecathlon.com/p1276519/k$13d043f6eb2db637f37478db517dbb67/sq/velo-vtt-st-100-gris-275.jpg?format=auto&f=720x720
Bike.create(user_id: 1, name: "Riverside", description: "Rythmez vos balades en toute facilité ! Grâce à l'assistance électrique.", address: "44200 Nantes", price_per_day: 13, kind: "Electrique" , size: "27,5 pouces" )
# https://contents.mediadecathlon.com/p1922090/k$805ed784f8e4ec853c5b9939e4f67366/sq/velo-tout-chemin-electrique-riverside-500-e-gris-vert.jpg?format=auto&f=720x720
# Bike.create(user_id: 2, name: "Btwin", description: , address: , price_per_day: , kind: , size: "24 pouces")
# https://contents.mediadecathlon.com/p1732642/k$da7d34b23236655c16daa6d6d25d4511/sq/vtt-enfant-rockrider-st-500-24-pouces-9-12-ans-jaune-fluo.jpg?format=auto&f=720x720
# Bike.create(user_id: 2, name:, description: , address: , price_per_day: , kind: , size: )
# Bike.create(user_id: 3, name:, description: , address: , price_per_day: , kind: , size: )
# Bike.create(user_id: 3, name:, description: , address: , price_per_day: , kind: , size: )
# Bike.create(user_id: 4, name:, description: , address: , price_per_day: , kind: , size: )
# Bike.create(user_id: 5, name:, description: , address: , price_per_day: , kind: , size: )

# 6 bookings
# Booking.create(status: "pending", user_id: , bike_id: , start_at: , end_at: , total_price: )

puts 'Movies are added !'
