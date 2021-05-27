class Product < ApplicationRecord
	validates :name, presence: true, length: { minimum: 3 }
	validates :soluong, presence: true
	validates :dongia, presence: true
	validates :mota, presence: true
	has_one_attached :image
end
