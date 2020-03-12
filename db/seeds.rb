# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

ChatRoom.destroy_all
Donation.destroy_all
Item.destroy_all
Look.destroy_all
User.destroy_all


puts "creating Users"
yuka = User.create!(
  username: "Yuka",
  email: "yuka@gmail.com",
  password: "123456"
  )
file = URI.open('https://avatars1.githubusercontent.com/u/40887017?s=460&v=4')
yuka.photo.attach(io: file, filename: 'yuka.jpg', content_type: 'image/jpg')

yuichiro = User.create!(
  username: "Yuichiro",
  email: "yuichiro@gmail.com",
  password: "123456"
)
file = URI.open('https://avatars0.githubusercontent.com/u/40255442?s=460&v=4')
yuichiro.photo.attach(io: file, filename: 'yuichiro.jpg', content_type: 'image/jpg')

noemi = User.create!(
  username: "Noemi",
  email: "noemi@gmail.com",
  password: "123456"
)
file = URI.open('https://avatars0.githubusercontent.com/u/56534210?s=460&v=4')
noemi.photo.attach(io: file, filename: 'noemi.jpg', content_type: 'image/jpg')

soda = User.create!(
  username: "Soda",
  email: "soda@gmail.com",
  password: "123456"
)
file = URI.open('https://avatars1.githubusercontent.com/u/6465116?s=460&v=4')
soda.photo.attach(io: file, filename: 'soda.jpg', content_type: 'image/jpg')

erica = User.create!(
  username: "Erica",
  email: "erica@gmail.com",
  password: "123456"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583929113/girl.jpg')
erica.photo.attach(io: file, filename: 'girl.jpg', content_type: 'image/jpg')

beth = User.create!(
  username: "Beth",
  email: "beth@gmail.com",
  password: "123456"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583929128/girl2.jpg')
beth.photo.attach(io: file, filename: 'girl2.jpg', content_type: 'image/jpg')

brad = User.create!(
  username: "Brad",
  email: "brad@gmail.com",
  password: "123456"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975947/boy_qomnkt.jpg')
brad.photo.attach(io: file, filename: 'boy.jpg', content_type: 'image/jpg')


puts "creating shirts"

striped_shirt = Item.create!(
  name: "Striped Shirt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "cream"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975705/striped-shirt.png')
striped_shirt.photo.attach(io: file, filename: 'striped-shirt.jpg', content_type: 'image/jpg')

white_tshirt = Item.create!(
  name: "Simple T-Shirt",
  size: "M",
  user: yuichiro,
  category: Item::CATEGORIES[0],
  tag_list: "white"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/white-shirt.png')
white_tshirt.photo.attach(io: file, filename: 'white-shirt.jpg', content_type: 'image/jpg')

teal_sweater = Item.create!(
  name: "Teal Sweater",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "teal"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/teal_sweater.png')
teal_sweater.photo.attach(io: file, filename: 'teal_sweater.jpg', content_type: 'image/jpg')

blue_sweater = Item.create!(
  name: "Blue Sweater",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "blue"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975703/blue_sweater.png')
blue_sweater.photo.attach(io: file, filename: 'blue_sweater.jpg', content_type: 'image/jpg')

white_shirt = Item.create!(
  name: "White Shirt",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[0],
  tag_list: "white"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975703/white_shirt.png')
white_shirt.photo.attach(io: file, filename: 'white_shirt.jpg', content_type: 'image/jpg')


puts "creating botoms"

yuichiro_jeans = Item.create!(
  name: "Jeans",
  size: "M",
  user: yuichiro,
  category: Item::CATEGORIES[1]
  tag_list: "jeans"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/yuichiro-jeans.png')
yuichiro_jeans.photo.attach(io: file, filename: 'yuichiro-jeans.jpg', content_type: 'image/jpg')

pink_trousers = Item.create!(
  name: "Pink Trousers",
  size: "M",
  user: soda,
  category: Item::CATEGORIES[1]
  tag_list: "pink"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/pink_trousers.png')
pink_trousers.photo.attach(io: file, filename: 'pink_trousers.jpg', content_type: 'image/jpg')

brown_pants = Item.create!(
  name: "Brown Pants",
  size: "M",
  user: soda,
  category: Item::CATEGORIES[1]
  tag_list: "brown"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975703/brown_pants.png')
brown_pants.photo.attach(io: file, filename: 'brown_pants.jpg', content_type: 'image/jpg')



puts "creating shoes"

star_shoes = Item.create!(
  name: "Star Shoes",
  size: "M",
  user: soda,
  category: Item::CATEGORIES[2]
  tag_list: "blue"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/star-shoes.png')
star_shoes.photo.attach(io: file, filename: 'star-shoes.jpg', content_type: 'image/jpg')

sneakers = Item.create!(
  name: "Running Shoes",
  size: "M",
  user: soda,
  category: Item::CATEGORIES[2]
  tag_list: "sneakers"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975703/sneakers.png')
sneakers.photo.attach(io: file, filename: 'sneakers.jpg', content_type: 'image/jpg')


puts "creating outerwear"

suit_jacket = Item.create!(
  name: "Formal Jacket",
  size: "M",
  user: soda,
  category: Item::CATEGORIES[3],
  tag_list: "black"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/suit_jacket.png')
suit_jacket.photo.attach(io: file, filename: 'suit_jacket.jpg', content_type: 'image/jpg')

black_jacket = Item.create!(
  name: "Black Jacket",
  size: "M",
  user: soda,
  category: Item::CATEGORIES[3],
  tag_list: "black"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/black_jacket.png')
black_jacket.photo.attach(io: file, filename: 'black_jacket.jpg', content_type: 'image/jpg')


puts "creating accessories"

glasses = Item.create!(
  name: "Glasses",
  size: "M",
  user: soda,
  category: Item::CATEGORIES[4],
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/glasses.png')
glasses.photo.attach(io: file, filename: 'glasses', content_type: 'image/jpg')


puts "finish"
