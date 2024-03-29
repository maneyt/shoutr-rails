class UsersController < ApplicationController
  skip_before_action :require_login, only: [:show, :new, :create]

  def show
    @user = User.find_by(user_name: params[:user_name])
    @shouts = @user.shouts.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)

    if @user.valid?
      sign_in(@user)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :user_name)
  end
end

