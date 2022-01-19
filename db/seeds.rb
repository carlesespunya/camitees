require "csv"

csv_options = { headers: :first_line, col_sep:  ";" }
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
front_personalizacions = "front_personalizacions.csv"
back_personalizacions = "back_personalizacions.csv"

ProductPrice.delete_all
ProductSize.delete_all
ProductColor.delete_all
ProductCategory.delete_all
PersonalizacionPrice.delete_all
FrontPersonalizacion.delete_all
BackPersonalizacion.delete_all
Product.delete_all
Size.delete_all
Color.delete_all
Category.delete_all
Personalizacion.delete_all

puts "DB clean"

CSV.foreach(products_path, csv_options) do |row|
  Product.create(name: row[0], description: row[1], sku: row[2], link: row[3])
end
puts "Products crated"

CSV.foreach(sizes_path, csv_options) do |row|
  Size.create(name: row[0], sku: row[1])
end
puts "Sizes crated"

CSV.foreach(colors, csv_options) do |row|
  Color.create(name: row[0], hex: row[1], sku: row[2])
end
puts "Colors crated"

CSV.foreach(categories, csv_options) do |row|
  row[2] = Category.create(name: row[0], description: row[1], sku: row[2], link: row[3])
end
puts "Categories created"

CSV.foreach(personalizacions, csv_options) do |row|
  Personalizacion.create(name: row[0], size: row[1], sku: row[2])
end
puts "Personalizacions created"

CSV.foreach(product_prices, csv_options) do |row|
  ProductPrice.create(product: Product.find_by(sku: row[0].to_i), price: row[1], min: row[2], max: row[3])
end
puts "Product prices created"

CSV.foreach(product_sizes, csv_options) do |row|
  ProductSize.create(product: Product.find_by(sku: row[0].to_i), size: Size.find_by(sku: row[1].to_i))
end
puts "Product sizes created"

CSV.foreach(product_colors, csv_options) do |row|
  ProductColor.create(product: Product.find_by(sku: row[0].to_i), color: Color.find_by(sku: row[1].to_i), link: row[2])
end
puts "Product colors created"

CSV.foreach(product_categories, csv_options) do |row|
  ProductCategory.create(product: Product.find_by(sku: row[0].to_i), category: Category.find_by(sku: row[1].to_i))
end
puts "Product categories created"

CSV.foreach(personalizacion_prices, csv_options) do |row|
  PersonalizacionPrice.create(personalizacion: Personalizacion.find_by(sku: row[0].to_i), price: row[1], min: row[2], max: row[3])
end
puts "Personalizacion prices created"

CSV.foreach(front_personalizacions, csv_options) do |row|
  FrontPersonalizacion.create(product: Product.find_by(sku: row[0].to_i), personalizacion: Personalizacion.find_by(sku: row[1].to_i))
end
puts "Front persoanlizacion created"

CSV.foreach(back_personalizacions, csv_options) do |row|
  BackPersonalizacion.create(product: Product.find_by(sku: row[0].to_i), personalizacion: Personalizacion.find_by(sku: row[1].to_i))
end
puts "Back persoanlizacion created"
