class DanhmucsController < ApplicationController
  def index
  	# @danhmuc_all = Danhmuc.all
    @q = Danhmuc.ransack(params[:q])
    @danhmuc_all = @q.result
  end

  def show
    @danhmuc = Danhmuc.find(params[:id])
  end

#tạo mới một danh mục
  def new
    @danhmuc = Danhmuc.new
  end

  def create
    @danhmuc = Danhmuc.new(danhmuc_params)

    if @danhmuc.save
      redirect_to @danhmuc
    else
      render :new, status: :unprocessable_entity
    end
  end

  #Sửa mọt dnah mục
   def edit
    @danhmuc = Danhmuc.find(params[:id])
  end

  def update
    @danhmuc = Danhmuc.find(params[:id])

    if @danhmuc.update(danhmuc_params)
      redirect_to @danhmuc
    else
      render :edit, status: :unprocessable_entity
    end
  end


  #xoá một danh mục
  def destroy
    @danhmuc = Danhmuc.find(params[:id])
    @danhmuc.destroy

    redirect_to root_path
  end

#truyền dữ liệu vào
  private
    def danhmuc_params
      params.require(:danhmuc).permit(:name, :image)
    end


end
