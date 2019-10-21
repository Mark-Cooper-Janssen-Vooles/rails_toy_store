class UserController < ApplicationController
  def index
    @user = User.all.sort
  end

  def show 
    @user = User.find(params[:id])
  end

  def new
    @users = User.all
    @user = User.new
  end

  def create
    User.create(user_params)
    flash[:notice] = "User successfully created!"
    redirect_to new_user_path
  end

  def edit 
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :picture)
  end

end