# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
products_path = "productos.csv"

Product.delete_all

puts "DB clean"

counter = 0
CSV.foreach(products_path) do |row|
  if counter.zero?
    counter += 1
  else
    row[2] = Product.create(name: row[0], description: row[1], sku: row[2])
    row[2].photo.attach(io: File.open(URI.open("#{row[3]}")), filename: 'nes.jpg', content_type: 'image/jpg')
  end
end

puts "Products crated"
