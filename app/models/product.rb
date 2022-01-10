class Product < ApplicationRecord
  has_many :product_colors
  has_many :product_prices
  has_many :product_sizes
  has_many :product_categories
  has_many :colors, through: :product_colors
  has_many :sizes, through: :product_sizes
  has_many :categories, through: :product_categories
  has_many :front_personalizacions
  has_many :back_personalizacions
  has_many :personalizacions, through: :front_personalizacions
  has_many :order_products
  validates :name, presence: true
  validates :sku, presence: true, numericality: true
end
