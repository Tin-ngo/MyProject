class CuahangsController < ApplicationController


  def index
  	@danhmuc_all = Danhmuc.all
  	# @product_all = Product.all
    @q = Product.ransack(params[:q])
    @product_all = @q.result
  end


  def show
    @danhmuc_all = Danhmuc.all
    @q = Product.ransack(params[:q])
    @product_all = @q.result
    @product = Product.find(params[:id])

  end

 

end
