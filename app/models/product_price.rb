class ProductPrice < ApplicationRecord
  belongs_to :product
  validates :price, presence: true, numericality: true
  validates :min, presence: true, numericality: true
  validates :max, presence: true, numericality: true
end
