class UsersController < ApplicationController

  def index
  	# @user_all = User.all
    @q = User.ransack(params[:q])
    @user_all = @q.result
  end

  def show
    @user = User.find(params[:id])
  end

# them một user mới
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
      #redirect_to :controller => 'post', :action => 'index'
    else
      render :new, status: :unprocessable_entity
    end
  end

#Sửa một user
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

#Xoá 1 user
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to @home #root_path
  end

#truyền tham số vào 
  private
    def user_params
      params.require(:user).permit(:username, :password)
    end

end
