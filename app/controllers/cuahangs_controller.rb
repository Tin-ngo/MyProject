class CuahangsController < ApplicationController

  PRODUCT_PER_PAGE = 4

  def index
    # @product_all = Product.all
  	@danhmuc_all = Danhmuc.all

# đang làm chỗ page và tìm kiếm
    @page = params.fetch(:page, 0).to_i
    @q = Product.ransack(params[:q])

    @sort_order = params[:sort_by]
    if @sort_order == "tang"
    @product_all = @q.result.offset(@page * PRODUCT_PER_PAGE).limit(PRODUCT_PER_PAGE).order(dongia: :asc)
    elsif @sort_order == "giam"
    @product_all = @q.result.offset(@page * PRODUCT_PER_PAGE).limit(PRODUCT_PER_PAGE).order(dongia: :desc)
    else
      @product_all = @q.result.offset(@page * PRODUCT_PER_PAGE).limit(PRODUCT_PER_PAGE)
    end
  end

  def self.order_list(sort_order)
    if sort_order == "asc"
      order(dongia: :asc)
    elsif sort_order == "desc"
      order(dongia: :desc)
    end
      
  end


  def show
    @danhmuc_all = Danhmuc.all
    @q = Product.ransack(params[:q])
    @product_all = @q.result
    @product = Product.find(params[:id])
  end


 

end
