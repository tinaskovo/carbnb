# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
User.destroy_all

users = [
  { first_name: "Fred", last_name: "Fooks", email: "fredfooks@me.com", password: 121212,
    photo: "https://avatars1.githubusercontent.com/u/37072793?s=400&u=a3da37beff2056ff305a13654be9aa05ceca92af&v=4", description: "Masters in Engineering Science at Sommerville College, University of Oxford. I want to learn to code to have a great understand of the applications of technology. After Le wagon I am working as a technology business analyst for Capgemini London" },

  { first_name: "Tina", last_name: "Turner", email: "tina@gotto.do", password: 232323,
    photo: "https://avatars0.githubusercontent.com/u/38000034?s=400&v=4", description: "After working for a few years for the UN and the Municipality of Copenhagen, I decided that I wanted to try something completely different. I found out that I wanted to try to become a web developer." },

 { first_name: "Magnus", last_name: "Parvus", email: "magnus@minimus.latin", password: 34343434,
   photo: "https://avatars1.githubusercontent.com/u/37999937?s=400&v=4", description: "I just finished High School and have always been interested in Coding. In my off year I decided to do the Le Wagon Bootcamp as I had seen it was the best/only one in Denmark :)" }
]


users.each do |user_hash|
  user = User.new(user_hash)
  user.remote_photo_url = user_hash[:photo]
  puts "#{user.first_name} #{user.last_name} successfully created" if user.save
end


cars = [
      {
    make: "Aston Martin", price: 150000, year_made: 1964,
    mileage: 60000, engine_size: 4, car_model: "DB5", transmission:"Manual",
    bhp: 282, fuel_type: "Petrol", seats: 2, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "https://cdn.shopify.com/s/files/1/1191/7384/products/VINTAGE_ASTON_MARTIN_DB5_CLASSIC_CAR_AUTUMN_ART.png?v=1516030533"
    },
      {
    make: "Jaguar", price: 4000, year_made: 1961,
    mileage: 10000, engine_size: 3.8, car_model: "E-Type", transmission:"Manual",
    bhp: 265, fuel_type: "Petrol", seats: 2, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "https://rmsothebys-cache.azureedge.net/d/e/3/0/3/f/de303f29a070dde9c63cec51b763180dd81c7d2a.jpg"
    },
      {
    make: "Ferrari", price: 8000, year_made: 1962,
    mileage: 40000, engine_size: 4, car_model: "250 GTO", transmission:"Manual",
    bhp: 300, fuel_type: "Petrol", seats: 2, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "http://www.onemillionpoundblog.com/wp-content/uploads/2017/02/Ferrari-250-GTO_2.jpeg"
    },
      {
    make: "Shelby", price: 8000, year_made: 1962,
    mileage: 40000, engine_size: 4, car_model: "Daytona Coupes", transmission:"Manual",
    bhp: 289, fuel_type: "Petrol", seats: 2, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "http://www.hillbankusa.com/sites/default/files/car-photos/TED_9660-X2.jpg"
    },
      {
    make: "Mercedes Benz", price: 2000, year_made: 1928,
    mileage: 100000, engine_size: 7, car_model: "SSK", transmission:"Manual",
    bhp:200, fuel_type: "Petrol", seats: 2, doors: 2, address: "Thorsgade 81, 2200 København N",
    photo: "http://car-from-uk.com/carphotos/full/1358082962588296.jpg"
    },
      {
    make: "Mclaren", price: 1000, year_made: "1998",
    mileage: 50000, engine_size: 6.1, car_model: "F1", transmission:"Manual",
    bhp: 680, fuel_type: "Petrol", seats: 3, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "https://storage.googleapis.com/gtspirit/uploads/2015/07/McLaren-F1-LM-Auction13.jpg"
    },
    {
    make: "Porshe", price: 1000, year_made: "1964",
    mileage: 50400, engine_size: 3, car_model: 911, transmission:"Manual",
    bhp:200, fuel_type: "Petrol", seats: 3, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "https://beam.land/static/images/p/large_752_ffe31.jpg"
    },
     {
    make: "Mercedes Benz", price: 3000, year_made: 1952,
    mileage: 100000, engine_size: 2.9, car_model: "300SL", transmission:"Manual",
    bhp: 300, fuel_type: "Petrol", seats: 2, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "https://i.ytimg.com/vi/2lVU4icocUk/maxresdefault.jpg"
    },
       {
    make: "Reliant", price: 30, year_made: 1981,
    mileage: 100000, engine_size: 0.7, car_model: "Robin", transmission:"Manual",
    bhp: 39, fuel_type: "Petrol", seats: 2, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "https://static.cargurus.com/images/site/2009/02/26/16/33/reliant_robin-pic-16543-1600x1200.jpeg"
    },
       {
    make: "Mercedes Benz", price: 300, year_made: 1966,
    mileage: 130000, engine_size: 2, car_model: "SL Pagode", transmission:"Manual",
    bhp:300, fuel_type: "Petrol", seats: 2, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "https://www.classicargarage.com/assets/images/8/mercedes-280sl-000-d1f43b78.jpg"
    },
        {
    make: "Land Rover", price: 400, year_made: 1966,
    mileage: "130000", engine_size: 2, car_model: "Series 2", transmission:"Manual",
    bhp:300, fuel_type: "Petrol", seats: 2, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "https://silodrome.com/wp-content/uploads/2014/01/LAND-ROVER-SERIES-IIA-FRONT.jpg"
    },
    {
    make: "Land Rover", price: 400, year_made: 1962,
    mileage: 1304000, engine_size: 2, car_model: "Series 3", transmission:"Manual",
    bhp: 320, fuel_type: "Petrol", seats: 2, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "http://cdn2.autoexpress.co.uk/sites/autoexpressuk/files/images/car_photo_280638.jpg"
    },
     {
    make: "BMW", price: 440, year_made: 1939,
    mileage: 1304000, engine_size: 3.5, car_model: "635CSi", transmission:"Manual",
    bhp: 320, fuel_type: "Diesel", seats: 2, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "http://i0.wp.com/racem.org/wp-content/uploads/parser/Bmw-635csi-1.JPG"
    },
     {
    make: "Jaguar", price: 4000, user_id: "Fred", year_made: 1957,
    mileage: 10000, engine_size: 3.8, car_model: "XKSS", transmission:"Manual",
    bhp: 265, fuel_type: "Petrol", seats: 2, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "http://hanabi.autoweek.com/sites/default/files/styles/gen-1200-675/public/1957_Jaguar_XKSS_0043_BH.jpg?itok=qaFR5XY3"
    },
      {
    make: "Ferrari", price: 90000, user_id: "Fred", year_made: 1962,
    mileage: 40000, engine_size: 3.3, car_model: 275, transmission:"Manual",
    bhp: 300 , fuel_type: "Petrol", seats: 2, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "http://bestcarmag.com/sites/default/files/ferrari-250-gto-1303592-5733021.jpg"
    },
     {
    make: "Porshe", price: 1400, year_made: 1967,
    mileage: 50400, engine_size: 2, car_model: "911 Targa", transmission:"Manual",
    bhp: 200, fuel_type: "Petrol", seats: 4, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "https://www.carpixel.net/w/61d9af3efdab275ad59ca468442a9ef1/porsche-911-s-targa-car-wallpaper-50540.jpg"
    },
      {
    make: "Ford", price: 2000, year_made: 1967,
    mileage: 80400, engine_size: 6, car_model: "351 Mustang", transmission:"Manual",
    bhp: 200, fuel_type: "Petrol", seats: 4, doors: 3, address: "Thorsgade 81, 2200 København N",
    photo: "https://i.pinimg.com/originals/89/ed/b5/89edb5bce89790268a870ad46de9f079.jpg"
    },
      {
    make: "Ford", price: 8700, year_made: 2004,
    mileage: 80400, engine_size: 5.4, car_model: "GT", transmission:"Manual",
    bhp: 500, fuel_type: "Petrol", seats: 2, doors: 2, address: "Thorsgade 81, 2200 København N",
    photo: "https://images.hgmsites.net/hug/1965-ford-gt40-roadster-prototype-bearing-chassis-no-gt-108--image-via-girardo-co_100617934_h.jpg"
    },
    {
    make: "Lamborghini", price: 2000, user_id: "Fred", year_made: 1966,
    mileage: 86400, engine_size: 6.7, car_model: "Muira", transmission:"Manual",
    bhp: 200, fuel_type: "Petrol", seats: 2, doors: 2, address: "Thorsgade 81, 2200 København N",
    photo: "http://bestcarmag.com/sites/default/files/1967-lamborghini-miura-1300810-8504757.jpg"
    }
]

def build_car(car_attributes)
  users = User.all
  begin
  car = Car.new(car_attributes)
  car.user = users.sample
  car.remote_photo_url = car_attributes[:photo]
  puts "#{car.make} #{car.car_model} successfully created" if car.save
  rescue Cloudinary::CarrierWave::UploadError
    puts "Error uploading, waiting a minute"
    sleep(30)
    build_car(car_attributes)
  end
end
cars.each do |car_attributes|
  build_car(car_attributes)
end


















