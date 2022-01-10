class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :product_color
  belongs_to :front_personalizacion
  belongs_to :back_personalizacion
end
