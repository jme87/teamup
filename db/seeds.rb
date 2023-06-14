# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
require 'open-uri'
puts "Cleaning the database............................................"
Post.destroy_all
UserGroup.destroy_all
Booking.destroy_all
Chatroom.destroy_all
Event.destroy_all
Group.destroy_all
User.destroy_all
puts "Seeding the database ............................................"


puts "Seeding 10 hardcoded users "
#################### 10 hardcoded users ####################

user1photo = URI.open("https://source.unsplash.com/DItYlc26zVI/600x600")
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

print '*'
STDOUT.flush

user2photo = URI.open("https://source.unsplash.com/YRJsMa72UDw/600x600")
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

print '*'
STDOUT.flush

user3photo = URI.open("https://source.unsplash.com/YUu9UAcOKZ4/600x600")
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

print '*'
STDOUT.flush

user4photo = URI.open("https://source.unsplash.com/zNWlX5Sw9a4/600x600")
user4 = User.new(
  {
    email: "jessica@test.com",
    first_name: "Jessica",
    last_name: Faker::Name.last_name,
    nickname: "jessica",
    bio: "Hello there! I'm Jessica, a driven and enthusiastic learner exploring the vast realms of web development through Ruby on Rails Fullstack Bootcamp at LeWagon. When not submerging myself in coding, you'll find me strumming my guitar or trying to master the art of baking sourdough bread. I love anything mint green or lilac - they give me peace of mind. My personal motto? Work hard, jam harder, and a little bit of extra yeast never hurts!",
    city: "Berlin",
    password: "123456"
  }
)
user4.photo.attach(io: user4photo, filename: "user4.png", content_type: "image/png")
user4.save!

print '*'
STDOUT.flush

user5photo = URI.open("https://source.unsplash.com/hh3ViD0r0Rc/600x600")
user5 = User.new(
  {
    email: "michael@test.com",
    first_name: "Michael",
    last_name: Faker::Name.last_name,
    nickname: "michael",
    bio: "Hey, I'm Michael, a 30-year-old self-proclaimed tech geek currently enrolled in LeWagon's Ruby on Rails Fullstack Web Development Bootcamp. When I'm not immersed in debugging or spinning up new web applications, I enjoy cycling through the city or experimenting with home-brewed coffee (with mixed success, I must admit!). I find inspiration in the colors of dawn and dusk - they spur my creativity. Remember, code passionately, cycle vigorously, and there's always time for a good coffee!",
    city: "Berlin",
    password: "123456"
  }
)
user5.photo.attach(io: user5photo, filename: "user5.png", content_type: "image/png")
user5.save!

print '*'
STDOUT.flush

user6photo = URI.open("https://source.unsplash.com/n5aE6hOY6do/600x600")
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

print '*'
STDOUT.flush

user7photo = URI.open("https://source.unsplash.com/7YVZYZeITc8/600x600")
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

print '*'
STDOUT.flush

user8photo = URI.open("https://source.unsplash.com/W7b3eDUb_2I/600x600")
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

print '*'
STDOUT.flush

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

print '*'
STDOUT.flush

user10photo = URI.open("https://source.unsplash.com/rDEOVtE7vOs/600x300")
user10 = User.new(
  {
    email: "lucy@test.com",
    first_name: "Lucy",
    last_name: "Green",
    nickname: "lucy-lou",
    city: "Berlin",
    bio: "Lucy here! Exploring the digital universe with LeWagon's Ruby on Rails Fullstack Bootcamp. When not coding, I'm either at a pottery class or playing with my two golden retrievers. I'm all about indigo and sunflower yellow - they feed my creative spirit. Code, create, and play fetch!",
    password: "123456"
  }
)
user10.photo.attach(io: user10photo, filename: "user10.png", content_type: "image/png")
user10.save!

print '*'
STDOUT.flush

user11photo = URI.open("https://media.licdn.com/dms/image/C4D03AQGU-XlmQNogxQ/profile-displayphoto-shrink_800_800/0/1524860667185?e=2147483647&v=beta&t=g4YPWlML1mCXc-iFhZ1Ae0p-RTEAue_EDz-0JSVGzkg")
user11 = User.new(
  {
    email: "jamie@test.com",
    first_name: "Jamie",
    last_name: "Lord",
    nickname: "jamie-james",
    city: "Berlin",
    bio: "Jamie here! Exploring the digital universe with LeWagon's Ruby on Rails Fullstack Bootcamp. When not coding, I'm either at a pottery class or playing with my two golden retrievers. I'm all about indigo and sunflower yellow - they feed my creative spirit. Code, create, and play fetch!",
    password: "123456"
  }
)
user11.photo.attach(io: user11photo, filename: "user11.png", content_type: "image/png")
user11.save!

print '*'
STDOUT.flush

user12photo = URI.open("https://media.licdn.com/dms/image/C4E03AQFHEhWccAlAJQ/profile-displayphoto-shrink_200_200/0/1606921067352?e=1692230400&v=beta&t=1hdHXIgL8Fg3uIZFjNJaPpjVGSRDNttMpuVo363TmWA")
user12 = User.new(
  {
    email: "marcela@test.com",
    first_name: "Marcela",
    last_name: "Morau",
    nickname: "mighty-marcela",
    city: "Berlin",
    bio: "Marcela here! Exploring the digital universe with LeWagon's Ruby on Rails Fullstack Bootcamp. When not coding, I'm either at a pottery class or playing with my two golden retrievers. I'm all about indigo and sunflower yellow - they feed my creative spirit. Code, create, and play fetch!",
    password: "123456"
  }
)
user12.photo.attach(io: user12photo, filename: "user12.png", content_type: "image/png")
user12.save!

print '*'
STDOUT.flush

user13photo = URI.open("https://media.licdn.com/dms/image/C4D03AQHQOgGbmMK_ag/profile-displayphoto-shrink_800_800/0/1555509383375?e=2147483647&v=beta&t=cdQtRuha86hggLvoa46bpc5jAAlIrYKl1F5LIllGWX8")
user13 = User.new(
  {
    email: "loic@test.com",
    first_name: "Loic",
    last_name: "Khodarkovsky",
    nickname: "loickho",
    city: "Berlin",
    bio: "Loic here! Exploring the digital universe with LeWagon's Ruby on Rails Fullstack Bootcamp. When not coding, I'm either at a pottery class or playing with my two golden retrievers. I'm all about indigo and sunflower yellow - they feed my creative spirit. Code, create, and play fetch!",
    password: "123456"
  }
)
user13.photo.attach(io: user13photo, filename: "user13.png", content_type: "image/png")
user13.save!

print '*'
STDOUT.flush

user14photo = URI.open("https://media.licdn.com/dms/image/C4D03AQHQOgGbmMK_ag/profile-displayphoto-shrink_800_800/0/1555509383375?e=2147483647&v=beta&t=cdQtRuha86hggLvoa46bpc5jAAlIrYKl1F5LIllGWX8")
user14 = User.new(
  {
    email: "patrick@test.com",
    first_name: "Patrick",
    last_name: "Prüßen",
    nickname: "pa",
    city: "Berlin",
    bio: "Patrick here! Exploring the digital universe with LeWagon's Ruby on Rails Fullstack Bootcamp. When not coding, I'm either at a pottery class or playing with my two golden retrievers. I'm all about indigo and sunflower yellow - they feed my creative spirit. Code, create, and play fetch!",
    password: "123456"
  }
)
user14.photo.attach(io: user14photo, filename: "user14.png", content_type: "image/png")
user14.save!

print '*'
STDOUT.flush
puts "Done"
puts ""

puts "Seeding 8 hardcoded groups "
################### 8 hardcoded groups ####################

group1photo = URI.open("https://source.unsplash.com/0NaQQsLWLkA/1200x600")
group1 = Group.new(
  {
    title: 'The Flying Volleyballs',
    description: "Join our group of gravity-defying volleyball enthusiasts and soar to new heights.",
    city: "Berlin",
    category: "Volleyball",
    user_id: user1.id,
    private: false
  }
)
group1.photos.attach(io: group1photo, filename: "group1.png", content_type: "image/png")
group1.save!

print '*'
STDOUT.flush

group2photo = URI.open("https://source.unsplash.com/Z4Sxy1_3wdY/1200x600")
group2 = Group.new(
  {
    title: 'Fierce Tennis and beer',
    description: "Calling all tennis enthusiasts who love the game. Join us for some fierce tennis matches and cold beers after!",
    city: "Berlin",
    category: "Tennis",
    user_id: user2.id,
    private: false
  }
)
group2.photos.attach(io: group2photo, filename: "group2.png", content_type: "image/png")
group2.save!

print '*'
STDOUT.flush

group3photo = URI.open("https://source.unsplash.com/Wt9IRghaLN0/1200x600")
group3 = Group.new(
  {
    title: 'Goal Scoring Squad',
    description: "Unleash your inner goal-scoring machine and join our football frenzy.",
    city: "Berlin",
    category: "Football",
    user_id: user3.id,
    private: false
  }
)
group3.photos.attach(io: group3photo, filename: "group3.png", content_type: "image/png")
group3.save!

print '*'
STDOUT.flush

group4photo = URI.open("https://source.unsplash.com/FHNgTEuxyJA/1200x600")
group4 = Group.new(
  {
    title: 'Stairway to Heaven',
    description: "Join our dynamic bouldering social sports group and ascend to new heights of camaraderie, challenge, and fun!",
    city: "Berlin",
    category: "Bouldering",
    user_id: user4.id,
    private: false
  }
)
group4.photos.attach(io: group4photo, filename: "group4.png", content_type: "image/png")
group4.save!

print '*'
STDOUT.flush

group5photo = URI.open("https://images.pexels.com/photos/1472887/pexels-photo-1472887.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
group5 = Group.new(
  {
    title: 'Yoga in the Park',
    description: "Join our group for meditation, relaxation and deep stretching in a park near you!",
    city: "Berlin",
    category: "Yoga",
    user_id: user5.id,
    private: false
  }
)
group5.photos.attach(io: group5photo, filename: "group5.png", content_type: "image/png")
group5.save!

print '*'
STDOUT.flush

group6photo = URI.open("https://www.info83.fr/wp-content/uploads/2023/02/Padel-tennis-Domaine-de-la-Tuiliere-Carnoules-Var..jpeg")
group6 = Group.new(
  {
    title: 'Paddle Power',
    description: "Serve up some smashing fun and make a racket with our vibrant paddle tennis social sports group.",
    city: "Berlin",
    category: "Paddle Tennis",
    user_id: user6.id,
    private: false
  }
)
group6.photos.attach(io: group6photo, filename: "group6.png", content_type: "image/png")
group6.save!

print '*'
STDOUT.flush

group7photo = URI.open("https://source.unsplash.com/nGt71kRwUOw/1200x600")
group7 = Group.new(
  {
    title: 'Berlin Steel Horse Cycling',
    description: "Pedal through picturesque landscapes and urban streets with our vibrant cycling group, exploring Berlin and Brandenburg on your steel horse.",
    city: "Berlin",
    category: "Cycling",
    user_id: user7.id,
    private: false
  }
)
group7.photos.attach(io: group7photo, filename: "group7.png", content_type: "image/png")
group7.save!

print '*'
STDOUT.flush

group8photo = URI.open("https://source.unsplash.com/IdrUEz0Tjxw/1200x600")
group8 = Group.new(
  {
    title: 'Berlin Ballers United',
    description: "Dribble, shoot, and soar with our passionate basketball group, bringing the love of the game to the courts of Berlin.",
    city: "Berlin",
    category: "Basketball",
    user_id: user8.id,
    private: false
  }
)
group8.photos.attach(io: group8photo, filename: "group8.png", content_type: "image/png")
group8.save!

print '*'
STDOUT.flush
puts "Done"
puts ""


puts "Seeding 30 hardcoded events "
#################### 15 hardcoded events ####################

event1photo = URI.open("https://source.unsplash.com/10QkXxk0mVA")
event1 = Event.new(
  {
    title: 'Summer Volleyball Tournament',
    description: "Get ready for a hilarious volleyball tournament filled with laughter and friendly competition!",
    start_date: DateTime.new(2023, 6, 18, 13, 0, 0),
    end_date: DateTime.new(2023, 6, 18, 17, 0, 0),
    address: 'Caroline-Michaelis-Straße 8, 10115 Berlin, Germany',
    city: "Berlin",
    price: Faker::Number.within(range: 0..10),
    spots_available: 8,
    category: 'Volleyball',
    level: "Beginner",
    duration: 4.0,
    group_id: group1.id,
    user_id: user1.id
  }
)
event1.photos.attach(io: event1photo, filename: "event1.png", content_type: "image/png")
event1.save!
event1.create_chatroom!(name: "Chatroom for #{event1.title}")

print '*'
STDOUT.flush

event2photo = URI.open("https://source.unsplash.com/WkY8KhEFXak/400x300")
event2 = Event.new(
  {
    title: "Women Doubles",
    description: "Calling all tennis enthusiasts! Join our Doubles with your bestie or find a partner here!",
    start_date: DateTime.new(2023, 6, 22, 18, 0, 0),
    end_date: DateTime.new(2023, 6, 22, 20, 0, 0),
    address: "Vorarlberger Damm 37, 14195 Berlin, Germany",
    city: "Berlin",
    price: Faker::Number.within(range: 0..10),
    spots_available: 8,
    category: "Tennis",
    level: "Intermediate",
    duration: 2.0,
    group_id: group2.id,
    user_id: user2.id
  }
)
event2.photos.attach(io: event2photo, filename: "event2.png", content_type: "image/png")
event2.save!
event2.create_chatroom!(name: "Chatroom for #{event2.title}")

print '*'
STDOUT.flush

event3photo = URI.open("https://source.unsplash.com/XUsMIX04wvc")
event3 = Event.new(
  {
    title: "Casual Womens Football",
    description: "Join our evening womens football event. Experience the camaraderie and the joy of scoring goals. Lace up your boots and get ready for some thrilling football action!",
    start_date: DateTime.new(2023, 6, 20, 19, 0, 0),
    end_date: DateTime.new(2023, 6, 20, 21, 0, 0),
    address: "Friedenstraße 101, 10249 Berlin, Germany",
    city: "Berlin",
    price: Faker::Number.within(range: 0..10),
    spots_available: 12,
    category: "Football",
    level: "Intermediate",
    duration: 2.0,
    group_id: group3.id,
    user_id: user3.id
  }
)
event3.photos.attach(io: event3photo, filename: "event3.png", content_type: "image/png")
event3.save!
event3.create_chatroom!(name: "Chatroom for #{event3.title}")

print '*'
STDOUT.flush

event4photo = URI.open("https://source.unsplash.com/1v7axvhwnOU")
event4 = Event.new(
  {
    title: 'Skill building Volleyball',
    description: "Join us for a thrilling evening of volleyball where genders unite, spiking, setting, and diving together, creating an atmosphere of inclusivity and friendly competition.",
    start_date: DateTime.new(2023, 6, 17, 14, 0, 0),
    end_date: DateTime.new(2023, 6, 17, 16, 0, 0),
    address: 'Wilhelm-Kabus-Straße 42, 10829 Berlin, Germany',
    city: "Berlin",
    price: Faker::Number.within(range: 0..10),
    spots_available: 6,
    category: 'Volleyball',
    level: "Intermediate",
    duration: 2.0,
    group_id: group1.id,
    user_id: user1.id
  }
)
event4.photos.attach(io: event4photo, filename: "event4.png", content_type: "image/png")
event4.save!
event4.create_chatroom!(name: "Chatroom for #{event4.title}")

print '*'
STDOUT.flush

event5photo = URI.open("https://source.unsplash.com/UPjZWkyZ6aw")
event5 = Event.new(
  {
    title: 'Morning Game',
    description: "Join for a couple of hours of indoor volleyball and make friends.",
    start_date: DateTime.new(2023, 6, 30, 8, 0, 0),
    end_date: DateTime.new(2023, 6, 30, 10, 0, 0),
    address: 'Stralauer Pl. 34, 10243 Berlin, Germany',
    city: "Berlin",
    price: Faker::Number.within(range: 0..10),
    spots_available: 8,
    category: 'Volleyball',
    level: "Beginner",
    duration: 2.0,
    group_id: group1.id,
    user_id: user1.id
  }
)
event5.photos.attach(io: event5photo, filename: "event5.png", content_type: "image/png")
event5.save!
event5.create_chatroom!(name: "Chatroom for #{event5.title}")

print '*'
STDOUT.flush


event6photo = URI.open("https://source.unsplash.com/8YUNBQwvn0o")
event6 = Event.new(
  {
    title: 'Summer Volleyball Tournament',
    description: "Get ready for a hot n' sweaty volleyball tournament filled with fun, music and spirtit!",
    start_date: DateTime.new(2023, 6, 18, 10, 0, 0),
    end_date: DateTime.new(2023, 6, 18, 14, 0, 0),
    address: 'Caroline-Michaelis-Straße 8, 10115 Berlin, Germany',
    city: "Berlin",
    price: Faker::Number.within(range: 0..10),
    spots_available: 18,
    category: 'Volleyball',
    level: "Intermediate",
    duration: 4.0,
    group_id: group1.id,
    user_id: user1.id
  }
)
event6.photos.attach(io: event6photo, filename: "event6.png", content_type: "image/png")
event6.save!
event6.create_chatroom!(name: "Chatroom for #{event6.title}")

print '*'
STDOUT.flush

event7photo = URI.open("https://source.unsplash.com/xwaaqLHL1VM")
event7 = Event.new(
  {
    title: 'Basketball Street-Jam',
    description: "Take your skills to the asphalt playground, join our vibrant basketball street group, and experience the electrifying atmosphere of fast-paced hoops under the open sky",
    start_date: DateTime.new(2023, 6, 25, 10, 0, 0),
    end_date: DateTime.new(2023, 6, 25, 14, 0, 0),
    address: 'Sebastianstraße 37, 10179 Berlin, Germany',
    city: "Berlin",
    price: Faker::Number.within(range: 0..10),
    spots_available: 10,
    category: 'Basketball',
    level: "Beginner",
    duration: 4.0,
    group_id: group8.id,
    user_id: user10.id
  }
)
event7.photos.attach(io: event7photo, filename: "event7.png", content_type: "image/png")
event7.save!
event7.create_chatroom!(name: "Chatroom for #{event7.title}")

print '*'
STDOUT.flush

event8photo = URI.open("https://source.unsplash.com/obZcpYkjFhk")
event8 = Event.new(
  {
    title: 'Yoga in Park am Gleisdreieck',
    description: "Unwind, rejuvenate, and connect with nature in our serene yoga in the park.",
    start_date: DateTime.new(2023, 6, 23, 15, 0, 0),
    end_date: DateTime.new(2023, 6, 23, 16, 0, 0),
    address: 'Dennewitzstraße 37, 10785 Berlin, Germany',
    city: "Berlin",
    price: Faker::Number.within(range: 0..10),
    spots_available: 20,
    category: 'Yoga',
    level: "Beginner",
    duration: 1.0,
    group_id: group5.id,
    user_id: user7.id
  }
)
event8.photos.attach(io: event8photo, filename: "event8.png", content_type: "image/png")
event8.save!
event8.create_chatroom!(name: "Chatroom for #{event8.title}")

print '*'
STDOUT.flush

event9photo = URI.open("https://source.unsplash.com/M2x3A8Q4JbY")
event9 = Event.new(
  {
    title: 'NEW Mixed Paddle Tennis',
    description: "Ty out the new paddle tennis craze to hit Berlin, mixed teams, casual game.",
    start_date: DateTime.new(2023, 6, 22, 10, 0, 0),
    end_date: DateTime.new(2023, 6, 22, 14, 0, 0),
    address: 'Caroline-Michaelis-Straße 8, 10115 Berlin, Germany',
    city: "Berlin",
    price: Faker::Number.within(range: 0..10),
    spots_available: 8,
    category: 'Paddle Tennis',
    level: "Beginner",
    duration: 2.0,
    group_id: group6.id,
    user_id: user6.id
  }
)
event9.photos.attach(io: event9photo, filename: "event9.png", content_type: "image/png")
event9.save!
event9.create_chatroom!(name: "Chatroom for #{event9.title}")

print '*'
STDOUT.flush

event10photo = URI.open("https://source.unsplash.com/nGt71kRwUOw")
event10 = Event.new(
  {
    title: 'Sunday Mens Cycle Tour',
    description: "A nice way to see some of Brandenburgs captivating landscapes. Meeting point is Ostkreuz Station traveling to Müggelsee and surrounding areas.",
    start_date: DateTime.new(2023, 6, 18, 10, 0, 0),
    end_date: DateTime.new(2023, 6, 18, 14, 0, 0),
    address: 'Koppenstraße 3, 10243 Berlin, Germany',
    city: "Berlin",
    price: Faker::Number.within(range: 0..10),
    spots_available: 6,
    category: 'Cycling',
    level: "Intermediate",
    duration: 7.0,
    group_id: group7.id,
    user_id: user3.id
  }
)
event10.photos.attach(io: event10photo, filename: "event10.png", content_type: "image/png")
event10.save!
event10.create_chatroom!(name: "Chatroom for #{event10.title}")

print '*'
STDOUT.flush

event11photo = URI.open("https://source.unsplash.com/QiYZCKJQMck")
event11 = Event.new(
  {
    title: 'Yoga in Mauer Park',
    description: "Unwind, rejuvenate, and connect with nature in our serene yoga in the park.",
    start_date: DateTime.new(2023, 6, 17, 10, 0, 0),
    end_date: DateTime.new(2023, 6, 17, 14, 0, 0),
    address: 'Gleimstraße 55, 10437 Berlin, Germany',
    city: "Berlin",
    price: Faker::Number.within(range: 0..10),
    spots_available: 20,
    category: 'Yoga',
    level: "Beginner",
    duration: 1.0,
    group_id: group5.id,
    user_id: user7.id
  }
)
event11.photos.attach(io: event11photo, filename: "event11.png", content_type: "image/png")
event11.save!
event11.create_chatroom!(name: "Chatroom for #{event11.title}")

print '*'
STDOUT.flush

event12photo = URI.open("https://source.unsplash.com/FHNgTEuxyJA/")
event12 = Event.new(
  {
    title: 'Climb High Bouldering',
    description: "Conquer the rocks, push your limits, and join our bouldering event.",
    start_date: DateTime.new(2023, 6, 28, 10, 0, 0),
    end_date: DateTime.new(2023, 6, 28, 14, 0, 0),
    address: 'Revaler Str. 99, 10245 Berlin, Germany',
    city: "Berlin",
    price: Faker::Number.within(range: 0..10),
    spots_available: 6,
    category: 'Bouldering',
    level: "Beginner",
    duration: 2.0,
    group_id: group4.id,
    user_id: user9.id
  }
)
event12.photos.attach(io: event12photo, filename: "event12.png", content_type: "image/png")
event12.save!
event12.create_chatroom!(name: "Chatroom for #{event12.title}")

print '*'
STDOUT.flush

event14photo = URI.open("https://source.unsplash.com/1v7axvhwnOU")
event14 = Event.new(
  {
    title: 'Beach Volleyball at Munich Olympic Park',
    description: "Join us for a fun and friendly game of beach volleyball at the beautiful Olympic Park.",
    start_date: DateTime.new(2023, 7, 1, 10, 0, 0),
    end_date: DateTime.new(2023, 7, 1, 12, 0, 0),
    address: 'Olympiapark München, 80809 München, Germany',
    city: "München",
    price: Faker::Number.within(range: 0..10),
    spots_available: 8,
    category: 'Volleyball',
    level: "Intermediate",
    duration: 2.0,
    group_id: group2.id,
    user_id: user3.id
  }
)
event14.photos.attach(io: event14photo, filename: "event14.png", content_type: "image/png")
event14.save!
event14.create_chatroom!(name: "Chatroom for #{event14.title}")

print '*'
STDOUT.flush

event15photo = URI.open("https://source.unsplash.com/aZVpxRydiJk")
event15 = Event.new(
  {
    title: 'Indoor Volleyball at Riem Arcaden',
    description: "Let's play some volleyball indoors at Riem Arcaden. All skill levels are welcome.",
    start_date: DateTime.new(2023, 7, 2, 15, 0, 0),
    end_date: DateTime.new(2023, 7, 2, 17, 0, 0),
    address: 'Willy-Brandt-Platz 5, 81829 München, Germany',
    city: "München",
    price: Faker::Number.within(range: 0..10),
    spots_available: 12,
    category: 'Volleyball',
    level: "Beginner",
    duration: 2.0,
    group_id: group3.id,
    user_id: user4.id
  }
)
event15.photos.attach(io: event15photo, filename: "event15.png", content_type: "image/png")
event15.save!
event15.create_chatroom!(name: "Chatroom for #{event15.title}")

print '*'
STDOUT.flush

event16photo = URI.open("https://source.unsplash.com/6E6oMx-69Ns")
event16 = Event.new(
  {
    title: 'Group Hiking in Munich',
    description: "Join us for a group hike around the beautiful trails of Munich. Suitable for all fitness levels.",
    start_date: DateTime.new(2023, 7, 3, 9, 0, 0),
    end_date: DateTime.new(2023, 7, 3, 13, 0, 0),
    address: 'English Garden, 80538 Munich, Germany',
    city: "München",
    price: Faker::Number.within(range: 0..10),
    spots_available: 20,
    category: 'Hiking',
    level: "Beginner",
    duration: 4.0,
    group_id: group1.id,
    user_id: user2.id
  }
)
event16.photos.attach(io: event16photo, filename: "event16.png", content_type: "image/png")
event16.save!
event16.create_chatroom!(name: "Chatroom for #{event16.title}")

print '*'
STDOUT.flush

# Erstes Event: Volleyball
event18photo = URI.open("https://source.unsplash.com/sVH6eo-u1mM")
event18 = Event.new(
  {
    title: 'Volleyball Match in Munich',
    description: "Join us for a friendly volleyball match in the heart of Munich. All skill levels are welcome!",
    start_date: DateTime.new(2023, 7, 7, 10, 0, 0),
    end_date: DateTime.new(2023, 7, 7, 12, 0, 0),
    address: 'Theresienwiese, 80336 Munich, Germany',
    city: "München",
    price: Faker::Number.within(range: 0..10),
    spots_available: 20,
    category: 'Volleyball',
    level: "Beginner",
    duration: 2.0,
    group_id: group2.id,
    user_id: user3.id
  }
)
event18.photos.attach(io: event18photo, filename: "event18.png", content_type: "image/png")
event18.save!
event18.create_chatroom!(name: "Chatroom for #{event18.title}")

print '*'
STDOUT.flush

# Zweites Event: Football
event19photo = URI.open("https://source.unsplash.com/mY2ZHBU6GRk")
event19 = Event.new(
  {
    title: 'Football Training in Munich',
    description: "Join us for a football training session. Suitable for all fitness levels.",
    start_date: DateTime.new(2023, 7, 8, 15, 0, 0),
    end_date: DateTime.new(2023, 7, 8, 17, 0, 0),
    address: 'Olympiapark, 80809 Munich, Germany',
    city: "München",
    price: Faker::Number.within(range: 0..10),
    spots_available: 15,
    category: 'Football',
    level: "Intermediate",
    duration: 2.0,
    group_id: group3.id,
    user_id: user4.id
  }
)

print '*'
STDOUT.flush

event19.photos.attach(io: event19photo, filename: "event19.png", content_type: "image/png")
event19.save!
event19.create_chatroom!(name: "Chatroom for #{event19.title}")

# Erstes Event: Bouldering
event20photo = URI.open("https://source.unsplash.com/NY1D4Zni7fc")
event20 = Event.new(
  {
    title: 'Bouldering Adventure in Munich',
    description: "Join us for an adventurous bouldering session in Munich. Suitable for all skill levels.",
    start_date: DateTime.new(2023, 7, 9, 10, 0, 0),
    end_date: DateTime.new(2023, 7, 9, 12, 0, 0),
    address: 'Thalkirchner Str. 207, 81371 München, Germany',
    city: "München",
    price: Faker::Number.within(range: 0..10),
    spots_available: 10,
    category: 'Bouldering',
    level: "Beginner",
    duration: 2.0,
    group_id: group2.id,
    user_id: user3.id
  }
)
event20.photos.attach(io: event20photo, filename: "event20.png", content_type: "image/png")
event20.save!
event20.create_chatroom!(name: "Chatroom for #{event20.title}")

print '*'
STDOUT.flush

# Zweites Event: Yoga
event21photo = URI.open("https://source.unsplash.com/F2qh3yjz6Jk")
event21 = Event.new(
  {
    title: 'Yoga in the Park Munich',
    description: "Join us for a relaxing yoga session in the park. Suitable for all fitness levels.",
    start_date: DateTime.new(2023, 7, 10, 15, 0, 0),
    end_date: DateTime.new(2023, 7, 10, 17, 0, 0),
    address: 'Englischer Garten, 80538 Munich, Germany',
    city: "München",
    price: Faker::Number.within(range: 0..10),
    spots_available: 20,
    category: 'Yoga',
    level: "Intermediate",
    duration: 2.0,
    group_id: group3.id,
    user_id: user4.id
  }
)
event21.photos.attach(io: event21photo, filename: "event21.png", content_type: "image/png")
event21.save!
event21.create_chatroom!(name: "Chatroom for #{event21.title}")

print '*'
STDOUT.flush

# Event in Frankfurt: Paddle Tennis
event22photo = URI.open("https://source.unsplash.com/M2x3A8Q4JbY")
event22 = Event.new(
  {
    title: 'Paddle Tennis in Frankfurt',
    description: "Join us for a fun paddle tennis match in Frankfurt. Suitable for all skill levels.",
    start_date: DateTime.new(2023, 7, 11, 13, 0, 0),
    end_date: DateTime.new(2023, 7, 11, 15, 0, 0),
    address: 'Hahnstraße 75, 60528 Frankfurt am Main, Germany',
    city: "Frankfurt am Main",
    price: Faker::Number.within(range: 0..10),
    spots_available: 8,
    category: 'Paddle Tennis',
    level: "Beginner",
    duration: 2.0,
    group_id: group1.id,
    user_id: user5.id
  }
)
event22.photos.attach(io: event22photo, filename: "event22.png", content_type: "image/png")
event22.save!
event22.create_chatroom!(name: "Chatroom for #{event22.title}")

print '*'
STDOUT.flush

# Event in Hamburg: Yoga
event23photo = URI.open("https://source.unsplash.com/YJdCZba0TYE")
event23 = Event.new(
  {
    title: 'Yoga in the Park Hamburg',
    description: "Join us for a relaxing yoga session in the park. Suitable for all fitness levels.",
    start_date: DateTime.new(2023, 7, 12, 10, 0, 0),
    end_date: DateTime.new(2023, 7, 12, 12, 0, 0),
    address: 'Stadtpark Hamburg, 22303 Hamburg, Germany',
    city: "Hamburg",
    price: Faker::Number.within(range: 0..10),
    spots_available: 15,
    category: 'Yoga',
    level: "Intermediate",
    duration: 2.0,
    group_id: group2.id,
    user_id: user6.id
  }
)
event23.photos.attach(io: event23photo, filename: "event23.png", content_type: "image/png")
event23.save!
event23.create_chatroom!(name: "Chatroom for #{event23.title}")

print '*'
STDOUT.flush

# Event in Hannover: Basketball
event24photo = URI.open("https://source.unsplash.com/BfphcCvhl6E")
event24 = Event.new(
  {
    title: 'Basketball Match in Hannover',
    description: "Join us for a friendly basketball match in Hannover. Suitable for all skill levels.",
    start_date: DateTime.new(2023, 7, 13, 16, 0, 0),
    end_date: DateTime.new(2023, 7, 13, 18, 0, 0),
    address: 'Am Sportpark 5, 30625 Hannover, Germany',
    city: "Hannover",
    price: Faker::Number.within(range: 0..10),
    spots_available: 10,
    category: 'Basketball',
    level: "Professional",
    duration: 2.0,
    group_id: group3.id,
    user_id: user7.id
  }
)
event24.photos.attach(io: event24photo, filename: "event24.png", content_type: "image/png")
event24.save!
event24.create_chatroom!(name: "Chatroom for #{event24.title}")

print '*'
STDOUT.flush

  # Event in Köln: Football
  event25photo = URI.open("https://source.unsplash.com/6k0VD3xNw6U")
  event25 = Event.new(
    {
      title: 'Football in Köln',
      description: "Join us for a fun football match in Köln. Suitable for all skill levels.",
      start_date: DateTime.new(2023, 7, 14, 13, 0, 0),
      end_date: DateTime.new(2023, 7, 14, 15, 0, 0),
      address: 'Sporthafen Köln, 51063 Köln, Germany',
      city: "Köln",
      price: Faker::Number.within(range: 0..10),
      spots_available: 22,
      category: 'Football',
      level: "Beginner",
      duration: 2.0,
      group_id: group4.id,
      user_id: user8.id
    }
  )
  event25.photos.attach(io: event25photo, filename: "event25.png", content_type: "image/png")
  event25.save!
  event25.create_chatroom!(name: "Chatroom for #{event25.title}")

  print '*'
  STDOUT.flush

  # Event in Potsdam: Tennis
  event26photo = URI.open("https://source.unsplash.com/Z4Sxy1_3wdY")
  event26 = Event.new(
    {
      title: 'Tennis in Potsdam',
      description: "Join us for a friendly tennis match in Potsdam. Suitable for all skill levels.",
      start_date: DateTime.new(2023, 7, 15, 10, 0, 0),
      end_date: DateTime.new(2023, 7, 15, 12, 0, 0),
      address: 'Am Luftschiffhafen 2, 14471 Potsdam, Germany',
      city: "Potsdam",
      price: Faker::Number.within(range: 0..10),
      spots_available: 8,
      category: 'Tennis',
      level: "Intermediate",
      duration: 2.0,
      group_id: group5.id,
      user_id: user9.id
    }
  )
  event26.photos.attach(io: event26photo, filename: "event26.png", content_type: "image/png")
  event26.save!
  event26.create_chatroom!(name: "Chatroom for #{event26.title}")

  print '*'
  STDOUT.flush
  # Event in Kiel: Cycling
  event27photo = URI.open("https://source.unsplash.com/Z4Sxy1_3wdY")
  event27 = Event.new(
    {
      title: 'Cycling Tour in Kiel',
      description: "Join us for a scenic cycling tour in Kiel. Suitable for all fitness levels.",
      start_date: DateTime.new(2023, 7, 16, 16, 0, 0),
      end_date: DateTime.new(2023, 7, 16, 18, 0, 0),
      address: 'Kleiner Kiel 1, 24103 Kiel, Germany',
      city: "Kiel",
      price: Faker::Number.within(range: 0..10),
      spots_available: 15,
      category: 'Cycling',
      level: "Professional",
      duration: 2.0,
      group_id: group6.id,
      user_id: user10.id
    }
  )
  event27.photos.attach(io: event27photo, filename: "event27.png", content_type: "image/png")
  event27.save!
  event27.create_chatroom!(name: "Chatroom for #{event27.title}")

  print '*'
  STDOUT.flush
  puts "Done"
  puts ""

puts "Seeding 8 hardcoded bookings "
#################### 8 hardcoded Bookings ####################

##### Event 1 Summer Volleyball Tournament
booking = Booking.create!(
  {
    user_id: user1.id,
    event_id: event1.id
  }
)

print '*'
STDOUT.flush

booking = Booking.create!(
  {
    user_id: user2.id,
    event_id: event1.id
  }
)

booking = Booking.create!(
  {
    user_id: user12.id,
    event_id: event4.id
  }
)

booking = Booking.create!(
  {
    user_id: user13.id,
    event_id: event4.id
  }
)

booking = Booking.create!(
  {
    user_id: user14.id,
    event_id: event4.id
  }
)

print '*'
STDOUT.flush

booking = Booking.create!(
  {
    user_id: user3.id,
    event_id: event1.id
  }
)

print '*'
STDOUT.flush

##### Event 2 Women double
booking = Booking.create!(
  {
    user_id: user2.id,
    event_id: event2.id
  }
)

print '*'
STDOUT.flush

booking = Booking.create!(
  {
    user_id: user6.id,
    event_id: event2.id
  }
)

print '*'
STDOUT.flush

##### Event 3 Casual Womens Football
booking = Booking.create!(
  {
    user_id: user4.id,
    event_id: event3.id
  }
)

print '*'
STDOUT.flush

booking = Booking.create!(
  {
    user_id: user6.id,
    event_id: event3.id
  }
)

print '*'
STDOUT.flush

##### Event 4 Skill Building Volleyball
booking = Booking.create!(
  {
    user_id: user6.id,
    event_id: event4.id
  }
)

print '*'
STDOUT.flush

##### Event 5 Morning Indoor Game
booking = Booking.create!(
  {
    user_id: user4.id,
    event_id: event5.id
  }
)

print '*'
STDOUT.flush

booking = Booking.create!(
  {
    user_id: user5.id,
    event_id: event5.id
  }
)

print '*'
STDOUT.flush

##### Event 6 Summer Volleyball Tournament
booking = Booking.create!(
  {
    user_id: user4.id,
    event_id: event6.id
  }
)

print '*'
STDOUT.flush

booking = Booking.create!(
  {
    user_id: user5.id,
    event_id: event6.id
  }
)

print '*'
STDOUT.flush

##### Event 7 Basketball Street-Jam
booking = Booking.create!(
  {
    user_id: user4.id,
    event_id: event7.id
  }
)

print '*'
STDOUT.flush

booking = Booking.create!(
  {
    user_id: user5.id,
    event_id: event7.id
  }
)

print '*'
STDOUT.flush


booking = Booking.create!(
  {
    user_id: user7.id,
    event_id: event7.id
  }
)

print '*'
STDOUT.flush

##### Event 8 Yoga in Park am Gleisdreieck
booking = Booking.create!(
  {
    user_id: user8.id,
    event_id: event8.id
  }
)

print '*'
STDOUT.flush

booking = Booking.create!(
  {
    user_id: user9.id,
    event_id: event8.id
  }
)

print '*'
STDOUT.flush

##### Event 9 NEW Mixed Paddle Tennis
booking = Booking.create!(
  {
    user_id: user8.id,
    event_id: event9.id
  }
)

print '*'
STDOUT.flush

booking = Booking.create!(
  {
    user_id: user9.id,
    event_id: event9.id
  }
)

print '*'
STDOUT.flush

##### Event 10 Sunday Mens Cycle Tour
booking = Booking.create!(
  {
    user_id: user1.id,
    event_id: event10.id
  }
)

print '*'
STDOUT.flush

booking = Booking.create!(
  {
    user_id: user7.id,
    event_id: event10.id
  }
)

print '*'
STDOUT.flush

booking = Booking.create!(
  {
    user_id: user3.id,
    event_id: event10.id
  }
)

print '*'
STDOUT.flush
puts "Done"
puts ""

puts "Seeding 10 hardcoded users groups "
#################### 3 hardcoded User_Groups ####################

##### User_Group 1
usergroup = UserGroup.create!(
  {
    user_id: user1.id,
    group_id: group1.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user2.id,
    group_id: group1.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user6.id,
    group_id: group1.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user7.id,
    group_id: group1.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user8.id,
    group_id: group1.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user9.id,
    group_id: group1.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user3.id,
    group_id: group1.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user4.id,
    group_id: group1.id
  }
)

print '*'
STDOUT.flush

##### User_Group 2
usergroup = UserGroup.create!(
  {
    user_id: user2.id,
    group_id: group2.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user6.id,
    group_id: group2.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user8.id,
    group_id: group2.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user10.id,
    group_id: group2.id
  }
)

print '*'
STDOUT.flush

##### User_Group 3
usergroup = UserGroup.create!(
  {
    user_id: user4.id,
    group_id: group3.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user5.id,
    group_id: group3.id
  }
)

print '*'
STDOUT.flush

##### User_Group 4
usergroup = UserGroup.create!(
  {
    user_id: user4.id,
    group_id: group4.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user5.id,
    group_id: group4.id
  }
)

print '*'
STDOUT.flush


##### User_Group 5
usergroup = UserGroup.create!(
  {
    user_id: user4.id,
    group_id: group5.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user5.id,
    group_id: group5.id
  }
)

print '*'
STDOUT.flush

##### User_Group 6
usergroup = UserGroup.create!(
  {
    user_id: user4.id,
    group_id: group6.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user5.id,
    group_id: group6.id
  }
)

print '*'
STDOUT.flush

##### User_Group 8
usergroup = UserGroup.create!(
  {
    user_id: user4.id,
    group_id: group8.id
  }
)

print '*'
STDOUT.flush

usergroup = UserGroup.create!(
  {
    user_id: user5.id,
    group_id: group8.id
  }
)

print '*'
STDOUT.flush
puts "Done"

puts "Congratulations - You now have wonderful SEEDS"
