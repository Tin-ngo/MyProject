class TrangchusController < ApplicationController
  def index
  	@user_all = User.all
  	@danhmuc_all = Danhmuc.all
  	@hoadon_all = Hoadon.all
  	@product_all = Product.all
  end
end
