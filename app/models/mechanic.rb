class Mechanic < ApplicationRecord
  has_many :cars
  has_many :owners, through: :cars
end
