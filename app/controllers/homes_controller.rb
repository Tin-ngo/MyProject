class HomesController < ApplicationController

  before_action :authenticate_user!, except: [:show, :index]


  def index
  	@danhmuc_all = Danhmuc.all
  end

  # cho người dùng đăng ký
  # them một user mới
  def new
    @DK = User.new
  end
  def create
    @DK = User.new(homes_user_params)

    if @DK.save
    	redirect_to :controller => 'homes', :action => 'index'
      # redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

#truyền dữ liệu vào
  private
    def homes_user_params
      params.require(:user).permit(:username, :password)
    end



end
