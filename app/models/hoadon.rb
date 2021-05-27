class Hoadon < ApplicationRecord
	validates :iduser, presence: true
	validates :idproduct, presence: true
	validates :dongia, presence: true
	validates :soluong, presence: true
end
