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
# erica = User.create!(
#   username: "Erica",
#   email: "erica@gmail.com",
#   password: "123456"
#   )
# file = URI.open('https://kaigai-drama-board.com/assets/medias/2016/06/20160608-getty_453921466.jpg')
# erica.photo.attach(io: file, filename: 'erica.jpg', content_type: 'image/jpg')


# beth = User.create!(
#   username: "Beth",
#   email: "beth@gmail.com",
#   password: "123456"
# )
# file = URI.open('https://assets.media-platform.com/gizmodo/dist/images/2019/01/16/the-mona-lisa-w1280.jpg')
# beth.photo.attach(io: file, filename: 'beth.jpg', content_type: 'image/jpg')

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

puts "creating shirts"

red = Item.create!(
  name: "Fluffy sweater",
  size: "M",
  user: soda,
  category: Item::CATEGORIES[0],
  tag_list: "red"
  )
file = URI.open('https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2018/10/15/goods-first-img/1569374114760435886.jpg')
red.photo.attach(io: file, filename: 'red_sweater.jpg', content_type: 'image/jpg')

purple = Item.create!(
  name: "Comfy sweater",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  )
file = URI.open('https://image.uniqlo.com/UQ/ST3/WesternCommon/imagesgoods/400452/item/goods_72_400452.jpg?width=734')
purple.photo.attach(io: file, filename: 'purple_sweater.jpg', content_type: 'image/jpg')

red_tshirt = Item.create!(
  name: "Summer t-shirt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "red"
  )
file = URI.open('https://5.imimg.com/data5/GT/KL/ML/SELLER-61610499/women-red-plain-t-shirt-500x500.jpg')
red_tshirt.photo.attach(io: file, filename: 'red_tshirt.jpg', content_type: 'image/jpg')


puts "creating jeans"

jeans = Item.create!(
  name: "Jeans",
  size: "S",
  user: noemi,
  category: Item::CATEGORIES[1]
  )
file2 = URI.open('https://www.kmart.com.au/wcsstore/Kmart/images/ncatalog/f/4/69069734-1-f.jpg')
jeans.photo.attach(io: file2, filename: 'jeans.jpg', content_type: 'image/jpg')

skirt = Item.create!(
  name: "Long skirt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[1]
  )
file2 = URI.open('https://images.yoox.com/35/35422428ke_12_f.jpg')
skirt.photo.attach(io: file2, filename: 'skirt.jpg', content_type: 'image/jpg')

crop_top = Item.create!(
  name: "Crop top",
  size: "S",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "red"
  )
file2 = URI.open('https://picture-cdn.wheretoget.it/c9xapf-l-610x610-tank-bustier-crop+tops-red-red+crop-red+bustier-crop+bustier-cutout+crop-cut+crop-bralette-crop+tank-crop+tanks.jpg')
crop_top.photo.attach(io: file2, filename: 'crop_top.jpg', content_type: 'image/jpg')



docs = Item.create!(
  name: "Doc Martens",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[2]
  )
file3 = URI.open('https://images-na.ssl-images-amazon.com/images/I/61nTdJxhgXL._AC_UY500_.jpg')
docs.photo.attach(io: file3, filename: 'docs.jpg', content_type: 'image/jpg')

hoodie = Item.create!(
  name: "Hoodie",
  size: "L",
  user: noemi,
  category: Item::CATEGORIES[0]
  )
file3 = URI.open('https://imcut.jollychic.com//uploads/jollyimg/imageLibrary/201710/46Q/27/IL201710271442480873.jpg')
hoodie.photo.attach(io: file3, filename: 'hoodie.jpg', content_type: 'image/jpg')

blouse = Item.create!(
  name: "Blouse",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0]
  )
file3 = URI.open('https://img.mytheresa.com/1088/1088/66/jpeg/catalog/product/27/P00395096.jpg')
blouse.photo.attach(io: file3, filename: 'blouse.jpg', content_type: 'image/jpg')

puts "finish"
