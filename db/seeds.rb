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
  { first_name: "Fred", last_name: "Fooks", email: "fredfooks@me.com", password: 121212},

  { first_name: "Tina", last_name: "Turner", email: "tina@gotto.do", password: 232323},

 { first_name: "Magnus", last_name: "Parvus", email: "magnus@minimus.latin", password: 34343434}
]

User.create!(users)

cars = [
      {
    make: "Aston Martin", price: "5000", year_made: "1964",
    mileage: "100000", engine_size: "4", car_model: "DB5", transmission:"Manual",
    bhp:"282", fuel_type: "Petrol", seats: "2", doors: "3"
    picture: "https://cdn.shopify.com/s/files/1/1191/7384/products/VINTAGE_ASTON_MARTIN_DB5_CLASSIC_CAR_AUTUMN_ART.png?v=1516030533"
    },
      {
    make: "Jaguar", price: "4000", year_made: "1961",
    mileage: "10000", engine_size: "3.8", car_model: "E-Type", transmission:"Manual",
    bhp:"265", fuel_type: "Petrol", seats: "2", doors: "3"
    picture: "https://rmsothebys-cache.azureedge.net/d/e/3/0/3/f/de303f29a070dde9c63cec51b763180dd81c7d2a.jpg"
    },
      {
    make: "Ferrari", price: "8000", year_made: "1962",
    mileage: "40000", engine_size: "4", car_model: "250 GTO", transmission:"Manual",
    bhp:"300", fuel_type: "Petrol", seats: "2", doors: "3"
    picture: "http://www.onemillionpoundblog.com/wp-content/uploads/2017/02/Ferrari-250-GTO_2.jpeg"
    },
      {
    make: "Shelby", price: "8000", year_made: "1962",
    mileage: "40000", engine_size: "4", car_model: "Daytona Coupes", transmission:"Manual",
    bhp:"289", fuel_type: "Petrol", seats: "2", doors: "3"
    picture: "http://www.hillbankusa.com/sites/default/files/car-photos/TED_9660-X2.jpg"
    },
      {
    make: "Mercedes Benz", price: "2000", year_made: "1928",
    mileage: "100000", engine_size: "7", car_model: "SSK", transmission:"Manual",
    bhp:"200", fuel_type: "Petrol", seats: "2", doors: "2"
    picture: "http://car-from-uk.com/carphotos/full/1358082962588296.jpg"
    },
      {
    make: "Mclaren", price: "1000", year_made: "1998",
    mileage: "50000", engine_size: "6.1", car_model: "F1", transmission:"Manual",
    bhp:"680", fuel_type: "Petrol", seats: "3", doors: "3"
    picture: "https://storage.googleapis.com/gtspirit/uploads/2015/07/McLaren-F1-LM-Auction13.jpg"
    },
    {
    make: "Porshe", price: "1000", year_made: "1964",
    mileage: "50400", engine_size: "3", car_model: "911", transmission:"Manual",
    bhp:"200", fuel_type: "Petrol", seats: "3", doors: "3"
    picture: "https://beam.land/static/images/p/large_752_ffe31.jpg"
    },
     {
    make: "Mercedes Benz", price: "3000", year_made: "1952",
    mileage: "100000", engine_size: "2.9", car_model: "300SL", transmission:"Manual",
    bhp:"300", fuel_type: "Petrol", seats: "2", doors: "3"
    picture: "https://i.ytimg.com/vi/2lVU4icocUk/maxresdefault.jpg"
    },
       {
    make: "Reliant", price: "30", year_made: "1981",
    mileage: "100000", engine_size: "0.7", car_model: "Robin", transmission:"Manual",
    bhp:"39", fuel_type: "Petrol", seats: "2.5", doors: "3"
    picture: "https://static.cargurus.com/images/site/2009/02/26/16/33/reliant_robin-pic-16543-1600x1200.jpeg"
    },
       {
    make: "Mercedes Benz", price: "300", year_made: "1966",
    mileage: "130000", engine_size: "2", car_model: "SL Pagode", transmission:"Manual",
    bhp:"300", fuel_type: "Petrol", seats: "2", doors: "3"
    picture: "https://www.classicargarage.com/assets/images/8/mercedes-280sl-000-d1f43b78.jpg"
    },
        {
    make: "Land Rover", price: "400", year_made: "1966",
    mileage: "130000", engine_size: "2", car_model: "SL Pagode", transmission:"Manual",
    bhp:"300", fuel_type: "Petrol", seats: "2", doors: "3"
    picture: "https://silodrome.com/wp-content/uploads/2014/01/LAND-ROVER-SERIES-IIA-FRONT.jpg"
    },
    {
    make: "Land Rover", price: "400", year_made: "1962",
    mileage: "1304000", engine_size: "2", car_model: "Series 3", transmission:"Manual",
    bhp:"320", fuel_type: "Petrol", seats: "2", doors: "3"
    picture: "http://cdn2.autoexpress.co.uk/sites/autoexpressuk/files/images/car_photo_280638.jpg"
    },
     {
    make: "BMW", price: "440", year_made: "1939",
    mileage: "1304000", engine_size: "3.5", car_model: "635CSi", transmission:"Manual",
    bhp:"320", fuel_type: "Diesel", seats: "2", doors: "3"
    picture: "http://i0.wp.com/racem.org/wp-content/uploads/parser/Bmw-635csi-1.JPG"
    },
     {
    make: "Jaguar", price: "4000", user_id: "Fred", year_made: "1957",
    mileage: "10000", engine_size: "3.8", car_model: "XKSS", transmission:"Manual",
    bhp:"265", fuel_type: "Petrol", seats: "2", doors: "3"
    picture: "https://icdn-4.motor1.com/images/mgl/BvoRm/s1/jaguar-xkss.jpg"
    },
      {
    make: "Ferrari", price: "8000", user_id: "Fred", year_made: "1962",
    mileage: "40000", engine_size: "3,3", car_model: "275", transmission:"Manual",
    bhp:"300", fuel_type: "Petrol", seats: "2", doors: "3"
    picture: "http://bestcarmag.com/sites/default/files/ferrari-250-gto-1303592-5733021.jpg"
    },
     {
    make: "Porshe", price: "1400", year_made: "1967",
    mileage: "50400", engine_size: "2", car_model: "911 Targa", transmission:"Manual",
    bhp:"200", fuel_type: "Petrol", seats: "4", doors: "3"
    picture: "https://www.carpixel.net/w/61d9af3efdab275ad59ca468442a9ef1/porsche-911-s-targa-car-wallpaper-50540.jpg"
    },
      {
    make: "Ford", price: "2000", year_made: "1967",
    mileage: "86400", engine_size: "6", car_model: "351 Mustang", transmission:"Manual",
    bhp:"200", fuel_type: "Petrol", seats: "4", doors: "3"
    picture: "http://www.seriouseats.com/images/2014/11/20141104-cocktail-party-old-fashioneds-holiday-vicky-wasik-3.jpg"
    },
      {
    make: "Ford", price: "2000", year_made: "2004",
    mileage: "86400", engine_size: "5.4", car_model: "GT", transmission:"Manual",
    bhp:"200", fuel_type: "Petrol", seats: "2", doors: "2"
    picture: "https://i.pinimg.com/originals/89/ed/b5/89edb5bce89790268a870ad46de9f079.jpg"
    },
    {
    make: "Lamborghini", price: "2000", user_id: "Fred", year_made: "1966",
    mileage: "86400", engine_size: "6.7", car_model: "Muira", transmission:"Manual",
    bhp:"200", fuel_type: "Petrol", seats: "2", doors: "2"
    picture: "http://bestcarmag.com/sites/default/files/1967-lamborghini-miura-1300810-8504757.jpg"
    }
]

users = User.all

cars.each do |car_attributes|
  car = Car.new(car_attributes)
  car.remote_url = car_attributes[:picture]
  car.user = users.sample
  car.save
end
