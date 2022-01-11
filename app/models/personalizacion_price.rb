class PersonalizacionPrice < ApplicationRecord
  belongs_to :personalizacion
  validates :price, presence: true, numericality: true
  validates :min, presence: true, numericality: true
  validates :max, presence: true, numericality: true
end
