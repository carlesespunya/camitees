class OrderProductSize < ApplicationRecord
  belongs_to :order_product
  belongs_to :product_size
  validates :quantity, presence: true, numericality: true
end
