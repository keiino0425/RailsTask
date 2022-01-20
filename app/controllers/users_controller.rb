class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :email, :password))
    if @user.save
      flash[:notice] = "ユーザーを新規登録しました"
      redirect_to "/users/profile/#{@user.id}"
    else
      render "new"
    end
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def profile
    @user = User.find(params[:id])
  end

  def account
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:username, :email, :password, :userimage, :userinfo))
      flash[:notice] = "ユーザー情報を更新しました"
      redirect_to "/users/profile/#{@user.id}"
    else
      flash[:notice] = "エラー"
      render "/users/profile/#{@user.id}"
    end
  end

  def destroy
  end
end
