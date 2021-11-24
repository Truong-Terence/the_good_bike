require "open-uri"

Booking.destroy_all
Bike.destroy_all
User.destroy_all

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
tintin = User.create(first_name: "Tintin", last_name: "Milou", email: "tintin@milou.fr", password: "secret")
haddock = User.create(first_name: "Captain", last_name: "Haddock", email: "rhum@bottle.fr", password: "secret")
tournesol = User.create(first_name: "Professor", last_name: "Tournesol", email: "proftournesol@gmail.com", password: "secret")
dupont = User.create(first_name: "Dupont", last_name: "Dupondt ", email: "dupont@gmail.com", password: "secret")
# Plus the four of us as renters

# 8 bikes : 2 bikes by owner
file_rockrider = URI.open("https://res.cloudinary.com/terence/image/upload/v1637664176/odmnkmnfscneyejbrmlx.jpg")
file_rockrider_2 = URI.open("https://res.cloudinary.com/terence/image/upload/v1637680699/velo-vtt-st-100-jaune-275_yxjmau.jpg")
file_rockrider_3 = URI.open("https://res.cloudinary.com/terence/image/upload/v1637680745/velo-vtt-st-100-jaune-275_unpcyk.jpg")
file_riverside = URI.open("https://res.cloudinary.com/terence/image/upload/v1637665660/y4orm9s66vuyq2all9sc.jpg")
file_riverside_2 = URI.open("https://res.cloudinary.com/terence/image/upload/v1637680777/velo-tout-chemin-electrique-riverside-500-e-gris-vert_u6bopc.jpg")
file_riverside_3 = URI.open("https://res.cloudinary.com/terence/image/upload/v1637680795/velo-tout-chemin-electrique-riverside-500-e-gris-vert_qejwi8.jpg")
file_btwin = URI.open("https://res.cloudinary.com/terence/image/upload/v1637665415/lqco8m8hiwyvjppshu1e.jpg")
file_stilus = URI.open("https://res.cloudinary.com/terence/image/upload/v1637664249/s6vxbksgnsmyihbkioyz.jpg")
file_triban = URI.open("https://res.cloudinary.com/terence/image/upload/v1637664257/x6cgkgwbnrpo2oyts0nn.jpg")
file_btwin_pliant = URI.open("https://res.cloudinary.com/terence/image/upload/v1637664927/xvgckwyqfpprmbwe58yy.jpg")
file_elops = URI.open("https://res.cloudinary.com/terence/image/upload/v1637668364/ROWER_MIEJSKI_ELEKTRYCZNY_ELOPS_940_E_WYSOKA_RAMA_dxmkvc.jpg")
file_ncm = URI.open("https://res.cloudinary.com/terence/image/upload/v1637665503/ihzktugtffrnnhtlc4d9.jpg")

rockrider = Bike.create(user: tintin, name: "Rockrider", description: "Designed for your first mountain biking tours, in dry weather, up to 1h30.", address: "Rue de la Brianderie, 44100 Nantes" , price_per_day: 10 , kind: "Mountain bike" , size: "27,5 in" )
rockrider.photos.attach(io: file_rockrider, filename: 'rockrider.png', content_type: 'image/png')
rockrider.photos.attach(io: file_rockrider_2, filename: 'rockrider2.png', content_type: 'image/png')
rockrider.photos.attach(io: file_rockrider_3, filename: 'rockrider3.png', content_type: 'image/png')

riverside = Bike.create(user: tintin, name: "Riverside", description: "Pace your walks with ease! Thanks to the electric assistance.", address: "Bd Gustave Roch, 44200 Nantes", price_per_day: 13, kind: "Electric" , size: "27,5 in" )
riverside.photos.attach(io: file_riverside, filename: 'riverside.png', content_type: 'image/png')
riverside.photos.attach(io: file_riverside_2, filename: 'riverside2.png', content_type: 'image/png')
riverside.photos.attach(io: file_riverside_3, filename: 'riverside3.png', content_type: 'image/png')

btwin = Bike.create(user: haddock, name: "Btwin", description: "Mountain bike for children from 9 to 12 years old.", address: "Bd Victor Hugo, 44200 Nantes", price_per_day: 6, kind: "Mountain bike", size: "24 in")
btwin.photos.attach(io: file_btwin, filename: 'btwin.png', content_type: 'image/png')

stilus = Bike.create(user: haddock, name: "Stilus", description: "This electric mountain bike is designed for ALL TERRAIN MOUNTAIN treks.", address: "Bd Guy Mollet, 44300 Nantes", price_per_day: 20, kind: "Electric mountain bike", size: "29 in")
stilus.photos.attach(io: file_stilus, filename: 'stilus.png', content_type: 'image/png')

triban = Bike.create(user: tournesol, name: "Triban", description: "Road bike for your regular outings. It will guarantee you uncompromising comfort to ride further, more often.", address: "Rue Océane, 44800 Saint-Herblain", price_per_day: 15, kind: "Road bike", size: "27 in")
triban.photos.attach(io: file_triban, filename: 'triban.png', content_type: 'image/png')

btwin_pliant = Bike.create(user: tournesol, name: "Btwin pliant", description: "Are you looking for an electric bike that is easy to take with you? The TILT 500 E can be stored in your car trunk and will accompany you on your week and weekend outings up to 35 km.", address: "Rue Maréchal Joffre, 44000 Nantes", price_per_day: 13, kind: "Electric", size: "25 in")
btwin_pliant.photos.attach(io: file_btwin_pliant, filename: 'btwin_pliant.png', content_type: 'image/png')

elops = Bike.create(user: dupont, name: "Elops", description: "Escape to the city on a comfortable, safe and well-equipped Dutch bike! With its low frame, luggage rack, basket or even its dynamo, all your journeys become easier.", address: "Avenue Félix Vincent, 44700 Orvault", price_per_day: 11, kind: "Dutch bike", size: "29 in")
elops.photos.attach(io: file_elops, filename: 'elops.png', content_type: 'image/png')

ncm = Bike.new(user: dupont, name: "NCM", description: "NCM Hamburg is the perfect example of classic style with a futuristic twist. A real ally on a daily basis!", address: "Boulevard Emile Romanet, 44100 Nantes", price_per_day: 16, kind: "Urban", size: "28 in")
ncm.photos.attach(io: file_ncm, filename: 'ncm.jpg', content_type: 'image/jpg')

# 6 bookings
Booking.create(user: dupont, bike: rockrider, start_at: "2001,2,3", end_at: "2001,2,5", total_price: 30)
Booking.create(user: tournesol, bike: riverside, start_at: "2001,3,12", end_at: "2001,3,16", total_price: 65)
Booking.create(user: dupont, bike: btwin, start_at: "2001,4,3", end_at: "2001,4,8", total_price: 36)
Booking.create(user: tournesol, bike: stilus, start_at: "2001,4,5", end_at: "2001,4,13", total_price: 180)
Booking.create(user: tintin, bike: triban, start_at: "2001,3,7", end_at: "2001,3,8", total_price: 30)
Booking.create(user: haddock, bike: btwin_pliant, start_at: "2001,1,9", end_at: "2001,1,11", total_price: 39)

puts 'Seeds are added !'
