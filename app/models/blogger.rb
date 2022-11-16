class Blogger < ApplicationRecord
  has_many :post, dependent: :destroy
  validates :name, presence: true,
                   uniqueness: :true
  validates :age, numericality: { greater_than: 0 }
  validates :bio, length: { minimum: 30 }
end
