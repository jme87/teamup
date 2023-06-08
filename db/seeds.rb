# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
require 'open-uri'
puts "Cleaning the database................................................"
UserGroup.destroy_all
Booking.destroy_all
Chatroom.destroy_all
Event.destroy_all
Group.destroy_all
User.destroy_all
puts "Seeding the database ............................................"

#################### 5 hardcoded users ####################
user1photo = URI.open("https://source.unsplash.com/DItYlc26zVI/600x300")
user1 = User.new(
  {
    email: "brandon@test.com",
    first_name: "Brandon",
    last_name: Faker::Name.last_name,
    nickname: "brandon",
    bio: "Hey there, I'm Brandon, a 32-year-old tech enthusiast currently diving headfirst into the world of web development through LeWagon's Ruby on Rails Fullstack Web Development Bootcamp. When I'm not decoding the mysteries of JavaScript or weaving tales with HTML and CSS, you'll likely find me buried in a sci-fi novel or trying to replicate my grandmother's recipes - often with hilarious results (think spaghetti stuck on the ceiling!). I have a soft spot for anything turquoise or cobalt blue - I swear those colors fuel my creativity. My life philosophy? Code hard, laugh often, and never underestimate the power of a good home-cooked meal!",
    city: "Berlin",
    password: "123456"
  }
)
user1.photo.attach(io: user1photo, filename: "user1.png", content_type: "image/png")
user1.save!

user2photo = URI.open("https://source.unsplash.com/YRJsMa72UDw/600x300")
user2 = User.new(
  {
    email: "cindy@test.com",
    first_name: "Cindy",
    last_name: Faker::Name.last_name,
    nickname: "cindy",
    bio: "Hello everyone! I'm Cindy, a 28-year-old trailblazer currently steering the ship as the CEO of a Fortune 500 company. When I'm not navigating the bustling corporate landscape, you might catch me practicing yoga in my favorite rose-gold activewear or indulging my guilty pleasure—binge-watching reality TV shows (I can't resist the drama!). My go-to colors? Emerald green and silver—they remind me to stay grounded, but also shine! Life's motto? Lead with passion, maintain balance, and always keep a sense of humor—it makes board meetings way more interesting!",
    city: "Berlin",
    password: "123456"
  }
)
user2.photo.attach(io: user2photo, filename: "user2.png", content_type: "image/png")
user2.save!

user3photo = URI.open("https://source.unsplash.com/YUu9UAcOKZ4/600x300")
user3 = User.new(
  {
    email: "david@test.com",
    first_name: "David",
    last_name: Faker::Name.last_name,
    nickname: "david",
    bio: "Hey hey, I'm David, a 29-year-old movie maker who believes that life itself is the greatest script ever written. When I'm not behind the camera creating visual magic, you can find me playing beach volleyball or attempting to beat my high score in vintage arcade games (Pac-Man, I'm looking at you!). I have an inexplicable love for all things indigo and mustard yellow—they just strike the right chord in my creative palette. My mantra? Life's a scene, make every take count, and remember, an impromptu dance-off never hurt anyone!",
    city: "Berlin",
    password: "123456"
  }
)
user3.photo.attach(io: user3photo, filename: "user3.png", content_type: "image/png")
user3.save!

user4photo = URI.open("https://source.unsplash.com/zNWlX5Sw9a4/600x300")
user4 = User.new(
  {
    email: "jessica@test.com",
    first_name: "Jessica",
    last_name: Faker::Name.last_name,
    nickname: "jessica",
    bio: "Hello there! I'm Jessica, a driven and enthusiastic learner exploring the vast realms of web development through Ruby on Rails Fullstack Bootcamp at LeWagon. When not submerging myself in coding, you'll find me strumming my guitar or trying to master the art of baking sourdough bread. I love anything mint green or lilac - they give me peace of mind. My personal motto? Work hard, jam harder, and a little bit of extra yeast never hurts!",
    city: "Paris",
    password: "123456"
  }
)
user4.photo.attach(io: user4photo, filename: "user4.png", content_type: "image/png")
user4.save!

user5photo = URI.open("https://source.unsplash.com/hh3ViD0r0Rc/600x300")
user5 = User.new(
  {
    email: "michael@test.com",
    first_name: "Michael",
    last_name: Faker::Name.last_name,
    nickname: "michael",
    bio: "Hey, I'm Michael, a 30-year-old self-proclaimed tech geek currently enrolled in LeWagon's Ruby on Rails Fullstack Web Development Bootcamp. When I'm not immersed in debugging or spinning up new web applications, I enjoy cycling through the city or experimenting with home-brewed coffee (with mixed success, I must admit!). I find inspiration in the colors of dawn and dusk - they spur my creativity. Remember, code passionately, cycle vigorously, and there's always time for a good coffee!",
    city: "Paris",
    password: "123456"
  }
)
user5.photo.attach(io: user5photo, filename: "user5.png", content_type: "image/png")
user5.save!

user6photo = URI.open("https://source.unsplash.com/n5aE6hOY6do/600x300")
user6 = User.new(
  {
    email: "emily@test.com",
    first_name: "Emily",
    last_name: "Doe",
    nickname: "emily",
    city: "Berlin",
    bio: "Hey, I'm Emily! Diving into the intricate world of web development with LeWagon's Ruby on Rails Bootcamp. If I'm not neck-deep in code, you'll find me practicing calligraphy or trying my hand at urban gardening. I'm a sucker for anything teal or coral - they brighten my day. Live, laugh, code, that's my motto!",
    password: "123456"
  }
)
user6.photo.attach(io: user6photo, filename: "user6.png", content_type: "image/png")
user6.save!

user7photo = URI.open("https://source.unsplash.com/7YVZYZeITc8/600x300")
user7 = User.new(
  {
    email: "luke@test.com",
    first_name: "Luke",
    last_name: "Brown",
    nickname: "luke",
    city: "Berlin",
    bio: "I'm Luke, expanding my horizons with the Ruby on Rails Fullstack Bootcamp at LeWagon. When not wrangling code, I'm an avid mountain climber and a master of chess. I've got a penchant for the colors of the sunset - they inspire my solutions. Life's a climb, but the view is great!",
    password: "123456"
  }
)
user7.photo.attach(io: user7photo, filename: "user7.png", content_type: "image/png")
user7.save!

user8photo = URI.open("https://source.unsplash.com/W7b3eDUb_2I/600x300")
user8 = User.new(
  {
    email: "sophie@test.com",
    first_name: "Sophie",
    last_name: "Taylor",
    nickname: "sophie",
    city: "Berlin",
    bio: "Sophie here! Currently unearthing the mysteries of web development at LeWagon's Ruby on Rails Bootcamp. I'm a voracious reader and a salsa dance enthusiast when not programming. My colors of choice are pastel pink and lime green - they keep me energized. Dance like nobody's watching, code like everybody's watching!",
    password: "123456"
  }
)
user8.photo.attach(io: user8photo, filename: "user8.png", content_type: "image/png")
user8.save!

user9photo = URI.open("https://source.unsplash.com/sibVwORYqs0/600x300")
user9 = User.new(
  {
    email: "james@test.com",
    first_name: "James",
    last_name: "White",
    nickname: "james",
    city: "Berlin",
    bio: "I'm James, an adventurer in the vast landscape of web development with Ruby on Rails at LeWagon. Off the coding grid, I'm either sketching landscapes or trying to cook the perfect steak. I love the colors of the earth, they ground me. Sketch, sizzle, code!",
    password: "123456"
  }
)
user9.photo.attach(io: user9photo, filename: "user9.png", content_type: "image/png")
user9.save!

user10photo = URI.open("https://source.unsplash.com/rDEOVtE7vOs/600x300")
user10 = User.new(
  {
    email: "lucy@test.com",
    first_name: "Lucy",
    last_name: "Green",
    nickname: "lucy",
    city: "Berlin",
    bio: "Lucy here! Exploring the digital universe with LeWagon's Ruby on Rails Fullstack Bootcamp. When not coding, I'm either at a pottery class or playing with my two golden retrievers. I'm all about indigo and sunflower yellow - they feed my creative spirit. Code, create, and play fetch!",
    password: "123456"
  }
)
user10.photo.attach(io: user10photo, filename: "user10.png", content_type: "image/png")
user10.save!


################### 3 hardcoded groups ####################

group1photo = URI.open("https://source.unsplash.com/0NaQQsLWLkA/1200x600")
group1 = Group.new(
  {
    title: 'The Flying Volleyballs',
    description: "Join our group of gravity-defying volleyball enthusiasts and soar to new heights.",
    city: "Berlin",
    category: "Volleyball",
    user_id: user1.id
  }
)
group1.photos.attach(io: group1photo, filename: "group1.png", content_type: "image/png")
group1.save!

group2photo = URI.open("https://source.unsplash.com/RNiK93wcz-U/1200x600")
group2 = Group.new(
  {
    title: 'Tennis and beer',
    description: "Calling all tennis enthusiasts who love the game. Join us for some fierce tennis matches and cold beers after!",
    city: "Berlin",
    category: "Tennis",
    user_id: user2.id
  }
)
group2.photos.attach(io: group2photo, filename: "group2.png", content_type: "image/png")
group2.save!

group3photo = URI.open("https://source.unsplash.com/Wt9IRghaLN0/1200x600")
group3 = Group.new(
  {
    title: 'Goal Scoring Squad',
    description: "Unleash your inner goal-scoring machine and join our football frenzy.",
    city: "Paris",
    category: "Football",
    user_id: user3.id
  }
)
group3.photos.attach(io: group3photo, filename: "group3.png", content_type: "image/png")
group3.save!

#################### 3 hardcoded events ####################
event1photo = URI.open("https://source.unsplash.com/UPjZWkyZ6aw/400x300")
event1 = Event.new(
  {
    title: 'Sunday Volleyball Tournament',
    description: "Get ready for a hilarious volleyball tournament filled with laughter and friendly competition!",
    start_date: DateTime.new(2023, 6, 15, 10, 0, 0),
    end_date: DateTime.new(2023, 6, 15, 14, 0, 0),
    address: 'Caroline-Michaelis-Straße 8, 10115 Berlin',
    price: Faker::Number.within(range: 0..10),
    spots_available: 20,
    category: 'Volleyball',
    duration: 4.0,
    group_id: group1.id,
    user_id: user1.id
  }
)
event1.photos.attach(io: event1photo, filename: "event1.png", content_type: "image/png")
event1.save!
event1.create_chatroom!(name: "Chatroom for #{event1.title}")

event2photo = URI.open("https://source.unsplash.com/WkY8KhEFXak/400x300")
event2 = Event.new(
  {
    title: "Women Doubles",
    description: "Calling all tennis enthusiasts! Join our Doubles with your bestie or find a partner here!",
    start_date: DateTime.new(2023, 6, 20, 8, 0, 0),
    end_date: DateTime.new(2023, 6, 20, 10, 0, 0),
    address: "Am Friedrichshain 15, 10407 Berlin",
    price: Faker::Number.within(range: 0..10),
    spots_available: 12,
    category: "Tennis",
    duration: 2.0,
    group_id: group2.id,
    user_id: user2.id
  }
)
event2.photos.attach(io: event2photo, filename: "event2.png", content_type: "image/png")
event2.save!
event2.create_chatroom!(name: "Chatroom for #{event2.title}")

event3photo = URI.open("https://source.unsplash.com/PxWYtbARH9s/400x300")
event3 = Event.new(
  {
    title: "Thursday Football",
    description: "Join our Thursday night Football event. Experience the camaraderie and the joy of scoring goals. Lace up your boots and get ready for some thrilling football action!",
    start_date: DateTime.new(2023, 6, 20, 19, 0, 0),
    end_date: DateTime.new(2023, 6, 20, 21, 0, 0),
    address: "5/7 Rue Neuve Saint-Pierre, 75004 Paris, France",
    price: Faker::Number.within(range: 0..10),
    spots_available: 12,
    category: "Football",
    duration: 2.0,
    group_id: group3.id,
    user_id: user3.id
  }
)
event3.photos.attach(io: event3photo, filename: "event3.png", content_type: "image/png")
event3.save!
event3.create_chatroom!(name: "Chatroom for #{event3.title}")

#################### 7 hardcoded Bookings ####################

##### Event 1

booking = Booking.create!(
  {
    user_id: user1.id,
    event_id: event1.id
  }
)

# booking = Booking.create!(
#   {
#     user_id: user2.id,
#     event_id: event1.id
#   }
# )

# booking = Booking.create!(
#   {
#     user_id: user3.id,
#     event_id: event1.id
#   }
# )

##### Event 2

booking = Booking.create!(
  {
    user_id: user2.id,
    event_id: event1.id
  }
)

booking = Booking.create!(
  {
    user_id: user6.id,
    event_id: event2.id
  }
)

##### Event 3

booking = Booking.create!(
  {
    user_id: user4.id,
    event_id: event3.id
  }
)

booking = Booking.create!(
  {
    user_id: user5.id,
    event_id: event3.id
  }
)

#################### 3 hardcoded User_Groups ####################

##### User_Group 1
usergroup = UserGroup.create!(
  {
    user_id: user1.id,
    group_id: group1.id
  }
)

usergroup = UserGroup.create!(
  {
    user_id: user2.id,
    group_id: group1.id
  }
)
usergroup = UserGroup.create!(
  {
    user_id: user6.id,
    group_id: group1.id
  }
)
usergroup = UserGroup.create!(
  {
    user_id: user7.id,
    group_id: group1.id
  }
)
usergroup = UserGroup.create!(
  {
    user_id: user8.id,
    group_id: group1.id
  }
)
usergroup = UserGroup.create!(
  {
    user_id: user9.id,
    group_id: group1.id
  }
)
##### User_Group 2
usergroup = UserGroup.create!(
  {
    user_id: user2.id,
    group_id: group2.id
  }
)
usergroup = UserGroup.create!(
  {
    user_id: user6.id,
    group_id: group2.id
  }
)

usergroup = UserGroup.create!(
  {
    user_id: user8.id,
    group_id: group2.id
  }
)
usergroup = UserGroup.create!(
  {
    user_id: user10.id,
    group_id: group2.id
  }
)

##### User_Group 3
usergroup = UserGroup.create!(
  {
    user_id: user4.id,
    group_id: group3.id
  }
)

usergroup = UserGroup.create!(
  {
    user_id: user5.id,
    group_id: group3.id
  }
)
