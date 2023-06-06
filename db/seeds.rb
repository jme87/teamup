# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
require 'open-uri'
puts "Cleaning Database.........................."
User.destroy_all
Group.destroy_all
Event.destroy_all
puts "Seeding the database ....................................."

#################### 5 hardcoded users ####################
user1photo = URI.open("https://source.unsplash.com/DItYlc26zVI/600x300")
user1 = User.new(
  {
    email: "brandon@test.com",
    first_name: "Brandon",
    last_name: Faker::Name.last_name,
    user_name: "brandon",
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
    user_name: "cindy",
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
    user_name: "david",
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
    user_name: "jessica",
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
    user_name: "michael",
    bio: "Hey, I'm Michael, a 30-year-old self-proclaimed tech geek currently enrolled in LeWagon's Ruby on Rails Fullstack Web Development Bootcamp. When I'm not immersed in debugging or spinning up new web applications, I enjoy cycling through the city or experimenting with home-brewed coffee (with mixed success, I must admit!). I find inspiration in the colors of dawn and dusk - they spur my creativity. Remember, code passionately, cycle vigorously, and there's always time for a good coffee!",
    city: "Paris",
    password: "123456"
  }
)
user5.photo.attach(io: user5photo, filename: "user5.png", content_type: "image/png")
user5.save!

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
group1.photo.attach(io: group1photo, filename: "group1.png", content_type: "image/png")
group1.save!

group2photo = URI.open("https://source.unsplash.com/RNiK93wcz-U/1200x600")
group2 = Group.new(
  {
    title: 'Tennis and Beer',
    description: "Calling all tennis enthusiasts who love the game. Join us for some fierce tennis matches and cold beers after!",
    city: "Berlin",
    category: "Tennis",
    user_id: user2.id
  }
)
group2.photo.attach(io: group2photo, filename: "group2.png", content_type: "image/png")
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
group3.photo.attach(io: group3photo, filename: "group3.png", content_type: "image/png")
group3.save!

#################### 3 hardcoded events ####################
# event1photo = URI.open("https://source.unsplash.com/464ps_nOflw/1200x600")
# event1 = Event.new(
#   {
#     title: 'Sunday Volleyball Tournament',
#     description: "Get ready for a hilarious volleyball tournament filled with laughter and friendly competition!",
#     start_date: DateTime.new(2023, 6, 15, 10, 0, 0),
#     end_date: DateTime.new(2023, 6, 15, 16, 0, 0),
#     address: 'Caroline-Michaelis-Straße 8, 10115 Berlin',
#     price: Faker::Number.within(range: 0..10),
#     spots_available: 20,
#     category: 'Volleyball',
#     duration: 4.0,
#     group_id: group1.id,
#     user_id: user1.id
#   }
# )
# event1.photo.attach(io: event1photo, filename: "event1.png", content_type: "image/png")
# event1.save!
