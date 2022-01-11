class Size < ApplicationRecord
  has_many :product_sizes
  validates :name, presence: true
end
