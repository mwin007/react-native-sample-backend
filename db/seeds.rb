# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'factory_bot'

puts "Seeding..."


landlords = FactoryBot.create_list :landlord, rand(10) + 1
merchants = FactoryBot.create_list :merchant, rand(10) + 1

ADDRESSES = [
  '145 Syed Alwi Road, Singapore 207704',
  '1 Rochor Canal Road, Singapore 188504',
  '665 Buffalo & Serangoon Roads, Little India, Singapore',
  '180 Kitchener Road, Singapore',
  '48 Serangoon Road, Singapore',
  '232 Serangoon Road, Singapore',
  'Sungei Road, Singapore',
  'Buffalo Road, Little India, Singapore'
]

20.times do
  FactoryBot.create :shop, landlord: landlords.sample, address: ADDRESSES.sample
end
shops = Shop.all.to_a


50.times do
  FactoryBot.create :product, merchant: merchants.sample
end
products = Product.all.to_a

100.times do
  FactoryBot.create :qr_code, product: products.sample, shop: shops.sample
end

puts "done."