class Color < ApplicationRecord
  has_many :product_colors
  validates :name, presence: true
  validates :hex, presence: true
  validates :sku, presence: true, numericality: true
end
