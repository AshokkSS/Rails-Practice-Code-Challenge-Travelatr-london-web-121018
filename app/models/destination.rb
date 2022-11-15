class Destination < ApplicationRecord
  has_many :post, dependent: :destroy
end
