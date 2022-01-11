class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products
  validates :total, presence: true, numericality: true
end
