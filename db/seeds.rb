require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating users, bikes and bookings [...]'

# -----------------  PASSWORDS : "secret"  ----------------- #

# 8 users (4 owners and 4 renters)
User.create(first_name: "Tintin", last_name: "Milou", email: "tintin@milou.fr", password: "secret")
User.create(first_name: "Captain", last_name: "Haddock", email: "rhum@bottle.fr", password: "secret")
User.create(first_name: "Professor", last_name: "Tournesol", email: "proftournesol@gmail.com", password: "secret")
User.create(first_name: "Dupont", last_name: "Dupondt ", email: "dupont@gmail.com", password: "secret")
# Plus the four of us as renters

# TODO: REALS ADDRESSES FOR BIKES
# TODO: cloudinary Seeds images
# 8 bikes : 2 bikes by owner
file_rockrider = URI.open("https://res.cloudinary.com/terence/image/upload/v1637664176/odmnkmnfscneyejbrmlx.jpg")
rockrider = Bike.create(user_id: 1, name: "Rockrider", description: "Designed for your first mountain biking tours, in dry weather, up to 1h30.", address: "44100, Nantes" , price_per_day: 10 , kind: "Mountain bike" , size: "27,5 in" )
rockrider.photo.attach(io: file_rockrider, filename: 'nes.png', content_type: 'image/png')

file_riverside = URI.open("https://res.cloudinary.com/terence/image/upload/v1637665660/y4orm9s66vuyq2all9sc.jpg")
riverside = Bike.create(user_id: 1, name: "Riverside", description: "Pace your walks with ease! Thanks to the electric assistance.", address: "44200 Nantes", price_per_day: 13, kind: "Electric" , size: "27,5 in" )
riverside.photo.attach(io: file_riverside, filename: 'nes.png', content_type: 'image/png')

file_btwin = URI.open("https://res.cloudinary.com/terence/image/upload/v1637665415/lqco8m8hiwyvjppshu1e.jpg")
btwin = Bike.create(user_id: 2, name: "Btwin", description: "Mountain bike for children from 9 to 12 years old.", address: "44200, Nantes", price_per_day: 6, kind: "Mountain bike", size: "24 in")
btwin.photo.attach(io: file_btwin, filename: 'nes.png', content_type: 'image/png')

file_stilus = URI.open("https://res.cloudinary.com/terence/image/upload/v1637664249/s6vxbksgnsmyihbkioyz.jpg")
stilus = Bike.create(user_id: 2, name: "Stilus", description: "This electric mountain bike is designed for ALL TERRAIN MOUNTAIN treks.", address: "44300, Nantes", price_per_day: 20, kind: "Electric mountain bike", size: "29 in")
stilus.photo.attach(io: file_stilus, filename: 'nes.png', content_type: 'image/png')

file_triban = URI.open("https://res.cloudinary.com/terence/image/upload/v1637664257/x6cgkgwbnrpo2oyts0nn.jpg")
triban = Bike.create(user_id: 3, name: "Triban", description: "Road bike for your regular outings. It will guarantee you uncompromising comfort to ride further, more often.", address: "44800, Saint-Herblain", price_per_day: 15, kind: "Road bike", size: "27 in")
triban.photo.attach(io: file_triban, filename: 'nes.png', content_type: 'image/png')

file_btwin_pliant = URI.open("https://res.cloudinary.com/terence/image/upload/v1637664927/xvgckwyqfpprmbwe58yy.jpg")
btwin_pliant = Bike.create(user_id: 3, name: "Btwin pliant", description: "Are you looking for an electric bike that is easy to take with you? The TILT 500 E can be stored in your car trunk and will accompany you on your week and weekend outings up to 35 km.", address: "44000, Nantes", price_per_day: 13, kind: "Electrical", size: "25 in")
btwin_pliant.photo.attach(io: file_btwin_pliant, filename: 'nes.png', content_type: 'image/png')

file_elops = URI.open("https://res.cloudinary.com/terence/image/upload/v1637668364/ROWER_MIEJSKI_ELEKTRYCZNY_ELOPS_940_E_WYSOKA_RAMA_dxmkvc.jpg")
elops = Bike.create(user_id: 4, name: "Elops", description: "Escape to the city on a comfortable, safe and well-equipped Dutch bike! With its low frame, luggage rack, basket or even its dynamo, all your journeys become easier.", address: "44700, Orvault", price_per_day: 11, kind: "Dutch bike", size: "29 in")
elops.photo.attach(io: file_elops, filename: 'nes.png', content_type: 'image/png')

file_ncm = URI.open("https://res.cloudinary.com/terence/image/upload/v1637665503/ihzktugtffrnnhtlc4d9.jpg")
ncm = Bike.create(user_id: 4, name: "NCM", description: "NCM Hamburg is the perfect example of classic style with a futuristic twist. A real ally on a daily basis!", address: "44100, Nantes", price_per_day: 16, kind: "Urban", size: "28 in")
ncm.photo.attach(io: file_ncm, filename: 'nes.png', content_type: 'image/png')

# 6 bookings
Booking.create(status: "pending", user_id: 4, bike_id: 1, start_at: "2001,2,3", end_at: "2001,2,5", total_price: 30)
Booking.create(status: "pending", user_id: 3, bike_id: 2, start_at: "2001,3,12", end_at: "2001,3,16", total_price: 65)
Booking.create(status: "pending", user_id: 4, bike_id: 3, start_at: "2001,4,3", end_at: "2001,4,8", total_price: 36)
Booking.create(status: "pending", user_id: 3, bike_id: 4, start_at: "2001,4,5", end_at: "2001,4,13", total_price: 180)
Booking.create(status: "pending", user_id: 1, bike_id: 5, start_at: "2001,3,7", end_at: "2001,3,8", total_price: 30)
Booking.create(status: "pending", user_id: 2, bike_id: 6, start_at: "2001,1,9", end_at: "2001,1,11", total_price: 39)

puts 'Seeds are added !'
