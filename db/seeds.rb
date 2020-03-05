# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Donation.destroy_all
Item.destroy_all
Look.destroy_all
User.destroy_all

puts "creating Users"
user = User.create!(
  username: "Erica",
  email: "erica@gmail.com",
  password: "123456"
  )
file = URI.open('https://kaigai-drama-board.com/assets/medias/2016/06/20160608-getty_453921466.jpg')
user.photo.attach(io: file, filename: 'erica.jpg', content_type: 'image/jpg')


user2 = User.create!(
  username: "Beth",
  email: "beth@gmail.com",
  password: "123456"
)
file = URI.open('https://assets.media-platform.com/gizmodo/dist/images/2019/01/16/the-mona-lisa-w1280.jpg')
user2.photo.attach(io: file, filename: 'beth.jpg', content_type: 'image/jpg')

puts "creating shirts"

shirts = Item.create!(
  name: "shirts",
  size: "m",
  user: user,
  category: Item::CATEGORIES.sample
  )
file = URI.open('https://im.uniqlo.com/images/jp/pc/goods/424984/sub/424984_sub7_popup.jpg')
shirts.photo.attach(io: file, filename: 'shirts.jpg', content_type: 'image/jpg')

shirts2 = Item.create!(
  name: "shirts",
  size: "m",
  user: user2,
  category: Item::CATEGORIES.sample
  )
file = URI.open('https://im.uniqlo.com/images/jp/pc/goods/424984/sub/424984_sub7_popup.jpg')
shirts2.photo.attach(io: file, filename: 'shirts.jpg', content_type: 'image/jpg')

shirts3 = Item.create!(
  name: "shirts",
  size: "m",
  user: user,
  category: Item::CATEGORIES.sample
  )
file = URI.open('https://im.uniqlo.com/images/jp/pc/goods/424984/sub/424984_sub7_popup.jpg')
shirts3.photo.attach(io: file, filename: 'shirts.jpg', content_type: 'image/jpg')


puts "creating jeans"

jeans = Item.create!(
  name: "jeans",
  size: "m",
  user: user2,
  category: Item::CATEGORIES.sample
  )
file2 = URI.open('https://im.uniqlo.com/images/jp/pc/goods/425520/item/68_425520_large.jpg')
jeans.photo.attach(io: file2, filename: 'jeans.jpg', content_type: 'image/jpg')

jeans2 = Item.create!(
  name: "jeans",
  size: "m",
  user: user2,
  category: Item::CATEGORIES.sample
  )
file2 = URI.open('https://im.uniqlo.com/images/jp/pc/goods/425520/item/68_425520_large.jpg')
jeans2.photo.attach(io: file2, filename: 'jeans.jpg', content_type: 'image/jpg')

jeans3 = Item.create!(
  name: "jeans",
  size: "m",
  user: user,
  category: Item::CATEGORIES.sample
  )
file2 = URI.open('https://im.uniqlo.com/images/jp/pc/goods/425520/item/68_425520_large.jpg')
jeans3.photo.attach(io: file2, filename: 'jeans.jpg', content_type: 'image/jpg')



shoes = Item.create!(
  name: "shoes",
  size: "m",
  user: user,
  category: Item::CATEGORIES.sample
  )
file3 = URI.open('https://im.uniqlo.com/images/jp/pc/goods/422356/item/56_422356.jpg')
shoes.photo.attach(io: file3, filename: 'shoes.jpg', content_type: 'image/jpg')

shoes2 = Item.create!(
  name: "shoes",
  size: "m",
  user: user2,
  category: Item::CATEGORIES.sample
  )
file3 = URI.open('https://im.uniqlo.com/images/jp/pc/goods/422356/item/56_422356.jpg')
shoes2.photo.attach(io: file3, filename: 'shoes.jpg', content_type: 'image/jpg')

shoes3 = Item.create!(
  name: "shoes",
  size: "m",
  user: user,
  category: Item::CATEGORIES.sample
  )
file3 = URI.open('https://im.uniqlo.com/images/jp/pc/goods/422356/item/56_422356.jpg')
shoes3.photo.attach(io: file3, filename: 'shoes.jpg', content_type: 'image/jpg')

puts "finish"
