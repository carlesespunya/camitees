class Category < ApplicationRecord
  has_many :product_categories
  has_many :products, through: :product_categories
  validates :name, presence: true
  has_one_attached :photo
end
