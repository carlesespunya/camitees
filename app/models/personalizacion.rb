class Personalizacion < ApplicationRecord
  has_many :front_personalizacions
  has_many :back_personalizacions
  has_many :personalizacion_prices
  validates :name, presence: true
  validates :size, presence: true
end
