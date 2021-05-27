class HoadonsController < ApplicationController
  def index
  	# @hoadon_all = Hoadon.all
    @q = Hoadon.ransack(params[:q])
    @hoadon_all = @q.result
  end

  def show
    @hoadon = Hoadon.find(params[:id])
  end

#tạo new hoa don
  def new
    @hoadon = Hoadon.new
  end

  def create
    @hoadon = Hoadon.new(hoadon_params)

    if @hoadon.save
      redirect_to @hoadon
    else
      render :new, status: :unprocessable_entity
    end
  end

  #chỉnh sửa 1 hoá đơn
  def edit
    @hoadon = Hoadon.find(params[:id])
  end

  def update
    @hoadon = Hoadon.find(params[:id])

    if @hoadon.update(hoadon_params)
      redirect_to @hoadon
    else
      render :edit, status: :unprocessable_entity
    end
  end

  #xoá một hoá đơn
  def destroy
    @hoadon = Hoadon.find(params[:id])
    @hoadon.destroy

    redirect_to root_path
  end


#truyền dữ liệu
   private
    def hoadon_params
      params.require(:hoadon).permit(:iduser, :idproduct, :soluong, :dongia)
    end


end
