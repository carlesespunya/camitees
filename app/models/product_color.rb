class ProductColor < ApplicationRecord
  belongs_to :product
  belongs_to :color
  has_one_attached :photo
end
