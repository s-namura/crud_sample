class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # Strong Paramere の記述
    User.create(user_params)
    # 以下のメソッドを追加
    redirect_to action: :index
  end

  def edit
    @user = User.find(params[:id])
  end

  # 以下のアクションを追加
  def update
    user = User.find(params[:id])
    user.update(user_params)
    # 以下のメソッドを追加
    redirect_to action: :index
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    # 以下のメソッドを追加
    redirect_to action: :index
  end

  private
  def user_params
    params.require(:user).permit(:name, :age)
  end

end
