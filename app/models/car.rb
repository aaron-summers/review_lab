class Car < ApplicationRecord
  belongs_to :owner
  belongs_to :mechanic
end
