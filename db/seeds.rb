# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  family = Family.new
    family.image.attach(io: File.open('./public/images/starks/starks.jpeg'), filename: 'starks.jpeg')
    family.save
  eddard = Guardian.create(family_id: family.id, first_name: "Eddard", last_name: "Stark", username: "estark", password: "abc123", email: "estark@winterfell.com", role: "Father")
    eddard.profile_pic.attach(io: File.open('./public/images/starks/eddard.jpeg'), filename: 'eddard.jpeg')
    eddard.save
  catelyn = Guardian.create(family_id: family.id, first_name: "Catelyn", last_name: "Stark", username: "cstark", password: "abc123", email: "cstark@winterfell.com", role: "Mother")
    catelyn.profile_pic.attach(io: File.open('./public/images/starks/catelyn.jpeg'), filename: 'catelyn.jpeg')
    catelyn.save
  arya = Child.create(family_id: family.id, first_name: "Arya", last_name: "Stark", birth_date: "10-01-2018", )
    arya.profile_pic.attach(io: File.open('./public/images/starks/arya.jpeg'), filename: 'arya.jpeg')
    arya.save
  sansa = Child.create(family_id: family.id, first_name: "Sansa", last_name: "Stark", birth_date: "10-01-2018")
    sansa.profile_pic.attach(io: File.open('./public/images/starks/sansa.jpeg'), filename: 'sansa.jpeg')
    sansa.save
  robb = Child.create(family_id: family.id, first_name: "Robb", last_name: "Stark", birth_date: "10-01-2018")
    robb.profile_pic.attach(io: File.open('./public/images/starks/robb.jpeg'), filename: 'robb.jpeg')
    robb.save
  bran = Child.create(family_id: family.id, first_name: "Bran", last_name: "Stark", birth_date: "10-01-2018")
    bran.profile_pic.attach(io: File.open('./public/images/starks/bran.jpeg'), filename: 'bran.jpeg')
    bran.save
  snow = Child.create(family_id: family.id, first_name: "John", last_name: "Snow", birth_date: "10-01-2018")
    snow.profile_pic.attach(io: File.open('./public/images/starks/johnsnow.jpeg'), filename: 'johnsnow.jpeg')
    snow.save
  rinkon = Child.create(family_id: family.id, first_name: "Rickon", last_name: "Stark", birth_date: "10-01-2018")
    rinkon.profile_pic.attach(io: File.open('./public/images/starks/rickon.jpeg'), filename: 'rickon.jpeg')
    rinkon.save
  
    todo = List.create(title: "Todo", family_id: family.id)
      ListItem.create(list_id: todo.id, content: "Kill Geoffrey")
  
    food = List.create(title: "Fruit", family_id: family.id)
      10.times do
        ListItem.create(list_id: food.id, content: Faker::Food.fruits)
      end
    
    spices = List.create(title: "Shopping List", family_id: family.id)
      10.times do
        ListItem.create(list_id: spices.id, content: Faker::Food.ingredient)
      end
    
    arya = List.create(title: "Arya's List", family_id: family.id) 
      ListItem.create(list_id: arya.id, content: "Joffrey Baratheon")
      ListItem.create(list_id: arya.id, content: "Walder Frey", complete: true)
      ListItem.create(list_id: arya.id, content: "Meryn Trant", complete: true)
      ListItem.create(list_id: arya.id, content: "Tywin Lannister")
      ListItem.create(list_id: arya.id, content: "Red Witch")
      ListItem.create(list_id: arya.id, content: "Beric Dondarion")
      ListItem.create(list_id: arya.id, content: "Thoros")
      ListItem.create(list_id: arya.id, content: "Polliver", complete: true)
      ListItem.create(list_id: arya.id, content: "Rorge", complete: true)
      ListItem.create(list_id: arya.id, content: "Cersei Lannister")
      ListItem.create(list_id: arya.id, content: "The Mountain")
      ListItem.create(list_id: arya.id, content: "The Hound")
      ListItem.create(list_id: arya.id, content: "Ilyn Payne")

    travel = List.create(title: "Dream Vacations", family_id: family.id) 
      10.times do 
        ListItem.create(list_id: travel.id, content: Faker::TvShows::GameOfThrones.city)
      end
    
      pets = List.create(title: "Wanna buy a Dragon?", family_id: family.id) 
      7.times do 
        ListItem.create(list_id: pets.id, content: Faker::TvShows::GameOfThrones.dragon)
      end

      house = List.create(title: "Westeros House Study Guide", family_id: family.id) 
      20.times do 
        ListItem.create(list_id: house.id, content: Faker::TvShows::GameOfThrones.unique.house)
      end

      quote = List.create(title: "Quotes to live by", family_id: family.id) 
      10.times do 
        ListItem.create(list_id: quote.id, content: Faker::TvShows::GameOfThrones.unique.quote)
      end

    test_photo1 = Photo.new(family_id: family.id)
    test_photo2 = Photo.new(family_id: family.id)
    test_photo3 = Photo.new(family_id: family.id)
    test_photo4 = Photo.new(family_id: family.id)
    test_photo5 = Photo.new(family_id: family.id)
    test_photo6 = Photo.new(family_id: family.id)
    test_photo7 = Photo.new(family_id: family.id)
    test_photo8 = Photo.new(family_id: family.id)
    test_photo9 = Photo.new(family_id: family.id)
    test_photo10 = Photo.new(family_id: family.id)
    test_photo11 = Photo.new(family_id: family.id)
    test_photo1.attachment.attach(io: File.open('./public/images/starks/ed.jpeg'), filename: 'ed.jpeg')
    test_photo2.attachment.attach(io: File.open('./public/images/starks/hodor.jpeg'), filename: 'hodor.jpeg')
    test_photo3.attachment.attach(io: File.open('./public/images/starks/John.jpeg'), filename: 'John.jpeg')
    test_photo4.attachment.attach(io: File.open('./public/images/starks/north.jpeg'), filename: 'north.jpeg')
    test_photo5.attachment.attach(io: File.open('./public/images/starks/queen.jpeg'), filename: 'queen.jpeg')
    test_photo6.attachment.attach(io: File.open('./public/images/starks/robbwed.jpeg'), filename: 'robbwed.jpeg')
    test_photo7.attachment.attach(io: File.open('./public/images/starks/sansawed.jpeg'), filename: 'sansawed.jpeg')
    test_photo8.attachment.attach(io: File.open('./public/images/starks/sansawed2.jpeg'), filename: 'sansawed2.jpeg')
    test_photo9.attachment.attach(io: File.open('./public/images/starks/starkkids.jpeg'), filename: 'starkkids.jpeg')
    test_photo10.attachment.attach(io: File.open('./public/images/starks/sword.jpeg'), filename: 'sword.jpeg')
    test_photo11.attachment.attach(io: File.open('./public/images/starks/weir.jpeg'), filename: 'weir.jpeg')
    test_photo1.save
    test_photo2.save
    test_photo3.save
    test_photo4.save
    test_photo5.save
    test_photo6.save
    test_photo7.save
    test_photo8.save
    test_photo9.save
    test_photo10.save
    test_photo11.save
    
    


puts " 🐺 🐺 🐺 🐺 🐺 🐺 🐺 " 



puts "🌱  🌱  🌱  🌱  🌱  🌱  🌱  🌱  🌱  🌱  "

