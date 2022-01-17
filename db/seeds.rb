require "csv"

csv_options = { headers: :first_line }
products_path = "products.csv"
sizes_path = "sizes.csv"
colors = "colors.csv"
categories = "categories.csv"
personalizacions = "personalizacions.csv"
product_sizes = "product_sizes.csv"
product_prices = "product_prices.csv"
product_colors = "product_colors.csv"
product_categories = "product_categories.csv"
personalizacion_prices = "personalizacion_prices.csv"
front_personalizacions = "ront_personalizacions.csv"
back_personalizacions = "back_personalizacionsx.csv"

Product.delete_all

puts "DB clean"

CSV.foreach(products_path, csv_options) do |row|
  row[2] = Product.create(name: row[0], description: row[1], sku: row[2])
  row[2].photo.attach(io: File.open(URI.open("#{row[3]}")), filename: 'nes.jpg', content_type: 'image/jpg')
end

puts "Products crated"
