class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :product_color
  belongs_to :front_personalizacion
  belongs_to :back_personalizacion
  has_many :order_product_sizes
  validates :quantity, presence: true, numericality: true
  validates :subtotal, presence: true, numericality: true
  validates :unit_price, presence: true, numericality: true
end
