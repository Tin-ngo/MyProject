class CuahangsController < ApplicationController
  def index
  	@danhmuc_all = Danhmuc.all
  	@product_all = Product.all
  end

 

end
