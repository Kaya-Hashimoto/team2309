class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]
  before_action :set_user, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to blogs_path # ユーザー作成時にブログ一覧へ遷移
    else
      render :new
    end
  end

  def show
  end

  def edit
    return redirect_to blogs_path unless current_user == @user
  end

  def update
    if @user.update(user_params)
      redirect_to user_path, notice: "ユーザー情報を編集しました！"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
  
  def set_user
    @user = User.find(params[:id])
  end

end
