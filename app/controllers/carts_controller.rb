class CartsController < ApplicationController

def index
	@danhmuc_all = Danhmuc.all
	@page = params.fetch(:page, 0).to_i
  @q = Product.ransack(params[:q])
  @sort_order = params[:sort_by]
  @hoadon = Hoadon.where(params[:iduser])
end

def show
	@danhmuc_all = Danhmuc.all
    @q = Product.ransack(params[:q])
    @product_all = @q.result
    @product = Product.find(params[:id])
end


#tạo new hoa don
  def new
  	@danhmuc_all = Danhmuc.all
    @q = Product.ransack(params[:q])
    @product_all = @q.result
    @hoadon = Hoadon.new
  end

  def create
    @hoadon = Hoadon.new(hoadon_params)
    if @hoadon.save
    redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

 

#truyền dữ liệu
   private
    def hoadon_params
      params.require(:hoadon).permit(:iduser, :idproduct, :soluong, :dongia)
    end



end
