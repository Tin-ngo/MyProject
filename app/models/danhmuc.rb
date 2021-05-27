class Danhmuc < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  has_one_attached :image
end
