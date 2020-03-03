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

p 1
user = User.create!(
  email: "abcd@gmail.com",
  password: "123456"
  )
p 1

p 2
shirts = Item.create!(
  name: "shirts",
  size: "m",
  user: user
  )
p 2

p 3
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
shirts.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
p 3

p 4
jeans = Item.create!(
  name: "jeans",
  size: "m",
  user: user
  )
p 4

p 5
file2 = URI.open('https://im.uniqlo.com/images/jp/pc/goods/425520/item/68_425520_large.jpg')
jeans.photo.attach(io: file2, filename: 'jeans.jpg', content_type: 'image/jpg')
p 5

p 6
shoes = Item.create!(
  name: "shoes",
  size: "m",
  user: user
  )
p 6

p 7
file3 = URI.open('https://im.uniqlo.com/images/jp/pc/goods/422356/item/56_422356.jpg')
jeans.photo.attach(io: file3, filename: 'shoes.jpg', content_type: 'image/jpg')
p 7
