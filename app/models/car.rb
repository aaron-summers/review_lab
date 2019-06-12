class Car < ApplicationRecord
  belongs_to :owner
  belongs_to :mechanic
  belongs_to :brand
end
