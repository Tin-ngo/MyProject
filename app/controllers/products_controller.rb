class ProductsController < ApplicationController
  def index
  	# @product_all = Product.all
    @q = Product.ransack(params[:q])
    @product_all = @q.result
  end
  def show
    @product = Product.find(params[:id])
  end

  #tạo một Prouct mới
   def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  #sửa dữ liệu
  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end

  #Xoá một product
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path
  end


#truyền dữ liệu
  private
    def product_params
      params.require(:product).permit(:name, :soluong, :dongia, :mota, :image)
    end

end
